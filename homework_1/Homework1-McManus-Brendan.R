

================ STATISTICS 470/503, 2015C, HOMEWORK 1 ================

                 YOUR NAME:  Brendan McManus

================================================================


INSTRUCTIONS:

- Due date and time:     THURSDAY, SEPTEMBER 10, 7PM

- Rename this file "Homework1-Lastname-Firstname.R" and upload
  it with your solutions to Canvas.

- Edit this file in RStudio and insert your solutions below between
the dashed lines as follows:

------------------------------------------
... (code)
------------------------------------------
... (result from R)
------------------------------------------
... (explanation
------------------------------------------

  should become something like this:

------------------------------------------
1:10
------------------------------------------
[1]  1  2  3  4  5  6  7  8  9 10
------------------------------------------
My very intelligent thought.
------------------------------------------


================================================================
            EDIT BELOW BETWEEN DASHED LINES
================================================================


(1)  Calculate the mean of 'StudentHeights' as if the function 'mean()'
     did not exist but all other functions did exist.
     (You should assume there are no missing values.)
------------------------------------------
sum(StudentHeights)/length(StudentHeights)
------------------------------------------

================================================================


(2)  Calculate the median of 'StudentHeights' as if the function 'median()'
     did not exist but all other functions did exist.
------------------------------------------
quantile(StudentHeights, probs=0.5)
------------------------------------------


================================================================


(3)  For 'StudentHeights', produce a vector that contains

(3a) their quintiles:
------------------------------------------
quantile(StudentHeights, probs=seq(0,1,by=.20))
------------------------------------------
   0%   20%   40%   60%   80%  100%
59.00 65.20 66.68 69.00 74.00 76.00
------------------------------------------

(3b) their quartiles:
------------------------------------------
quantile(StudentHeights, probs=seq(0,1,by=.25))
------------------------------------------
    0%    25%    50%    75%   100%
59.000 65.875 68.000 72.500 76.000
------------------------------------------


================================================================


(4)  Create a vector that contains the mean, the median and the standard
     deviation of 'StudentHeights', where the mean value is named 'mean',
     the median 'med', and the standard deviation 'sdev'.
------------------------------------------
c(mean=mean(StudentHeights), med=median(StudentHeights), sdev=sd(StudentHeights))
------------------------------------------
     mean       med      sdev
68.280000 68.000000  4.848288
------------------------------------------


================================================================


(5)  The final code in the class notes that defines 'StudentHeights'
     runs over two lines.  Why does this work?
------------------------------------------
R knows that the line is incomplete since
we included a comma. The comma indicates
to R that something else must follow,
thus R is able to continue reading in
the line.
------------------------------------------


================================================================


(6)  Repeat pattern:

(6a) Create a pattern that ascends in steps of +1 from 0 to 10,
     then descends in steps of -1 to 0, then ascends to 10, ...
     in all 5 times up and down, starting at 0 and ending at 0.
     Think of it as forming 5 integer pyramids.
     Make sure that NO TWO ADJACENT VALUES are the same.
------------------------------------------
c(rep(c(0:10, 9:1), 5),0)
------------------------------------------
 [1]  0  1  2  3  4  5  6  7  8  9 10  9  8  7  6  5  4  3  2  1  0  1  2  3  4  5  6  7  8  9 10  9  8  7  6  5  4  3  2  1  0  1  2  3  4
[46]  5  6  7  8  9 10  9  8  7  6  5  4  3  2  1  0  1  2  3  4  5  6  7  8  9 10  9  8  7  6  5  4  3  2  1  0  1  2  3  4  5  6  7  8  9
[91] 10  9  8  7  6  5  4  3  2  1  0
------------------------------------------

(6b) Plot this pattern.
     Use the pattern as vertical coordinates and
     the integers from 0 to length-1 as the
     horizontal coordinates.
     Plot first as points, then draw lines on top.
------------------------------------------
y <- c(rep(c(0:10, 9:1), 5),0)
x <- 0:(length(y) - 1)
plot(x,y)
lines(x,y, type="l")
------------------------------------------


================================================================


(7) LADDERS:

(7a) Make a ladder from 0 to 2*pi in steps of 0.01.
------------------------------------------
a <- seq(0, 2*pi, by = 0.01)
------------------------------------------

(7b) Figure out the length of this ladder by sheer thinking
     and explain your reasoning.
------------------------------------------
Answer: 629
Reasoning: 2*pi roughly equals 6.28, so
there would be 628 steps in total. This,
plus the initial value of 0 leads to 629
values in the ladder.
------------------------------------------

(7c) Then check the length in R.
------------------------------------------
length(a)
------------------------------------------
[1] 629
------------------------------------------


================================================================


(8)  "BULLSEYE":

     Re-use the ladder 'a' of the previous problem.


(8a) Plot 'cos()' of the ladder horizontally and
     'sin()' of the ladder vertically to create a curve.
------------------------------------------
plot(cos(a), sin(a), type="l")
------------------------------------------


(8b) What geometric figure do you get?  Why?
------------------------------------------
Figure: Circle
Reasoning: 2*pi is the circumference of the
circle in radians. Plotting cos on the
x-axis and sin on the y-axis gives us the
unit circle.
------------------------------------------

(8c) Now draw the same figure in the same plot
     three more times, first 3/4 the size, then 1/2 the size,
     and then 1/4 the size.
------------------------------------------
lines(cos(a)*3/4, sin(a)*3/4)
lines(cos(a)/2, sin(a)/2)
lines(cos(a)/4, sin(a)/4)
------------------------------------------

(8d) Relate the resulting plot to the above title of the problem:
------------------------------------------
It looks like a dart board with the center
(lines(cos(a)/4, sin(a)/4)) finally giving
us the bullseye!
------------------------------------------


================================================================


(9)  "SNAIL":

(9a) Make a ladder from 0 to 10*2*pi in steps of 0.01.
------------------------------------------
a <- seq(0, 10*2*pi, by = 0.01)
------------------------------------------

(9b) If you drew cos() and sin() of this ladder against
     each other, what would you see?  Why?
------------------------------------------
Figure: A circle
Reasoning: We are just tracing around the
circle 5 times. Equivalent to problem
(8) 5 times around.
------------------------------------------

(9c) To make this more interesting, let us play with the radius as follows:
     Make a vector of radii that are 1.1 to the power of the ladder 'a'.
------------------------------------------
r <- 1.1^a
------------------------------------------

(9d) Plot cos() and sin() as before, but multiply both, the vector
     of cosines and the vector of sines, with the vector of radii.
------------------------------------------
plot(cos(a)*r, sin(a)*r, type="l")
------------------------------------------

(9e) Try to explain why the plot came out this way.
------------------------------------------
The radius gradually increases exponentially,
as r = 1.1^a. Since plotting cos() and sin()
gives us a unit circle of radius 1,
multiplying cos() and sin() by a gradually
increasing exponential should give us
a unit circle with a gradually increasing
radius, thus the spiral.
------------------------------------------

(9f) Relate the resulting plot to the above title of the problem:
------------------------------------------
The plot looks like a spiral (snail shell).
------------------------------------------


================================================================
