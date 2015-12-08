
================ STATISTICS 470/503, 2015C, HOMEWORK 5 ================

                 YOUR NAME:  Brendan McManus

================================================================


INSTRUCTIONS:

- Due date and time:     TUESDAY, DECEMBER 8, 7PM

- Rename this file "Homework5-Lastname-Firstname.R" and upload
  it with your solutions to Canvas.

- Edit this file in RStudio and insert your solutions below between
the dashed lines.  Answer only what is asked for.  If it says
'... (code)', replace it with code but no explanations.  If it says
'... (Show results)' replace it with the results from R.  If it says
'... (explanation)' replace this with a one-sentence explanation.
Your code lines should be ready for execution, not cause errors,
and produce correct results..


================================================================
           EDIT YOUR SOLUTIONS BETWEEN DASHED LINES
================================================================


(1) Write a function that returns confidence intervals for the
regression coefficients of a multiple linear regression.

REQUIREMENTS:

- The CIs should be based on the assumption that the errors are
normally distributed as you learned in Stat 102/112.  In particular,
the solution should be NOT simulation-based and NOT bootstrap-based.
This is essentially an exercise in understanding the list returned by
'summary(linearModel)': where are the coefficient estimates?  where
their standard errors?  where the residual degrees of freedom for the
proper t-quantile to be used as multiplier of standard error?  You can
also study 'help(summary.lm)'.

- The function should have two arguments: the first argument 'linmod'
is for a linear model (such as 'Students.lm' from class) and the
second argument 'confidence=0.95' for the confidence level.

- The function should return a (p+1)x2 matrix, the first column having
name "CI.lo", the second column "CI.hi".  The rows should correspond
to the intercept and the regression coefficients.

----------------------------------------------------------------
CI.lm <- function(linmod, confidence) {
  return_matrix <- confint(linmod, level=confidence)
  colnames(return_matrix) <- c("CI.lo", "CI.hi")
  return(return_matrix)
}
CI.lm(Students.lm, confidence = 0.99)
                  CI.lo       CI.hi
(Intercept) -246.456724 -70.2839438
SEX          -14.809225   0.4637995
AGE           -2.597140   2.0276859
HEIGHT         3.834735   5.7485814
----------------------------------------------------------------


================================================================



2) Curve fitting and bootstrap confidence bands for curves

Motivating example: If one tries to predict HEIGHT from WEIGHT in the
'Students' data, one finds that the association is not linear.

TASK: Fit a curve that predicts HEIGHT from WEIGHT, and augment the
fitted curve with a bootstrap-based confidence band.

REQUIREMENTS:

- Use the following function for fitting a curve:
    reg.spline <- function(xy, xout=seq(min(xy[,1]),max(xy[,1]),len=101), nknots=3) {
      x <- xy[,1]
      y <- xy[,2]
      xknots <- quantile(x, prob=(0:nknots)/(1+nknots))         # Knot locations
      X <- cbind(1,x,x^2)                                       # Polynomial bases
      for(xknot in xknots) { X <- cbind(X, pmax(x-xknot,0)^3) } # Spline bases
      X.svd <- svd(X)
      X.svd$d <- pmax(X.svd$d, max(X.svd$d)/1E12)      # For numeric stability
      b <-  X.svd$v %*% ((t(X.svd$u) %*% y) / X.svd$d) # Coefficients
      Xout <- cbind(1,xout,xout^2)
      for(xknot in xknots) { Xout <- cbind(Xout, pmax(xout-xknot,0)^3) }
      cbind(x=xout, y=Xout %*% b)
    }

The function takes as its first argument a nx2 matrix = cbind(x,y),
and as second argument a grid of ordered x-values at which the curve
should be fitted.  The function returns a mx2 matrix =
cbind(xout, curve(xout))  where m=length(xout).

IMPORTANT: We say 'reg.spline()' returns a 'curve' but it is really a
discretized curve, evaluated at the 'xout' grid points.  This is
sufficient for drawing a polygonal trace that looks like a curve.



2a) Plotting the data and drawing the fitted curve:

. Define a matrix 'xy' by 'cbind()'ing WEIGHT and HEIGHT of the 'Students' data.
. Also define an equispaced grid 'xout' from 90 to 250 in steps of 10.
. Plot 'xy'; you can pass this to plot as a single argument instead of x and y.
. Draw the curve fitted with arguments 'xy' and 'xout'; use 'lwd=4' in 'lines()'.
  This can be done in a one-liner: 'lines()' also accepts a 2-column matrix,
  which is what 'reg.spline()' returns.

----------------------------------------------------------------
xy <- cbind(Students["WEIGHT"], Students["HEIGHT"])
xout <- seq(90, 250, by = 10)
plot(xy)
lines(reg.spline(xy, xout), lwd=4)
----------------------------------------------------------------



2b) Bootstrap confidence band around the fitted curve:

From 'xy' of 2a) generate 1000 bootstrap datasets, fit a curve to each
dataset using THE SAME grid 'xout' defined in 2a), and collect the
results in a matrix of size length(xout) x 1000.  (You will need
to peel off the second column from the result of 'reg.spline()'
because the first column is just 'xout'.)

Then use 'apply()' and 'quantile()' to compute the lower and upper
0.025 quantiles of the curves at all 'xout' locations.
The result should be a matrix of size 2 x length(xout).

Draw both rows of this matrix with 'lines()'.  This will be the
pointwise 0.95 confidence band.

----------------------------------------------------------------
y.boot <- replicate(1000, reg.spline({ sel <- sample(1:nrow(xy), replace=T)
                            xy[sel,] }, xout ))
y.boot.q <- apply(data.matrix(data.frame(y.boot)[c(F,T)]), 1, quantile, prob=c(0.025, 0.975))
lines(x=xout, y=y.boot.q[1,], lwd = 2, col = "blue")
lines(x=xout, y=y.boot.q[2,], lwd = 2, col = "blue")
----------------------------------------------------------------



2c) Package all of the above code in a single function that does it all:
. Plotting the data
. Drawing the fitted curve
. Drawing the two bootstrap quantile curves to form a confidence band
Below is how the function should be named and what its arguments should be.
Use '...' to pass additional arguments such as 'pch' and 'cex' to 'plot()'.

----------------------------------------------------------------
reg.spline.boot <- function(xy, xout=seq(min(xy[,1]),max(xy[,1]),len=25), nknots=3,
                            confidence=0.95, Nsim=1000,
                            lwd.curve=4, lwd.boot=2, col.curve="black", col.boot="blue", ...) {
plot(xy)
lines(reg.spline(xy, xout), lwd=lwd.curve, col=col.curve)
y.boot <- replicate(Nsim, reg.spline({ sel <- sample(1:nrow(xy), replace=T)
xy[sel,] }, xout ))
y.boot.q <- apply(data.matrix(data.frame(y.boot)[c(F,T)]), 1, quantile, prob=c((1-confidence)/2, 1-(1-confidence)/2))
lines(x=xout, y=y.boot.q[1,], lwd = lwd.boot, col = col.boot)
lines(x=xout, y=y.boot.q[2,], lwd = lwd.boot, col = col.boot)

}
reg.spline.boot(xy)   # For testing; 'xy' from 2a); use default 'xout'.
----------------------------------------------------------------



2d) Are you surprised about the behavior of the confidence band near
the left and right boundaries?  What causes this effect?

----------------------------------------------------------------
There is less data so the confidence interval will be larger 
towards the left and right boundaries.
----------------------------------------------------------------



================================================================


