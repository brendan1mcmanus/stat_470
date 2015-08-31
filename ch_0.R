

## ------------ INTRODUCTION TO BASICS OF R  ------------


## WHY R?


## HISTORY OF R:  C --> S --> R


## GETTING RSTUDIO: google and install...


## WHAT YOU CAN DO WITH R RIGHT AWAY:
## - R as a pocket calculator using math notation
## - R as a simple data summarizer
##
## Examples:
## [Use these examples for practice and memorization.
##  Take notes because the answers will NOT be posted!
##  If you missed class, get your answers from a fellow student or TA.
##  Knowing how to get human help is a fundamental skill in life.]
##
## - What is 1.25% interest on a $1213.85 bank account balance?
.0125*.85
##   [Note how R shows results: What is the meaning of '[1]'?)

## - Calculate an 18% tip on a $28.50 bill:
.18*28.5
## - What is the 10th power of 2?
2^10
## - Show all positive integers up to 100:
1:100
## - Show all integers from 1,001 to 1,100:
1001:1100
## - Show all numbers divisible by 3 below 100:
(1:33)*3
## - Calculate the powers of 2 for 0 up to 20:
2^(0:20)
## - Code explorations for integer ladders:

##   . What do you expect to see when generate
##     a ladder of numbers starting at 1.3 ending below 10?
1.3:10
##   . Same question if you start the sequence with
##     a negative integer such as -3?
-3:10
##   . Same question if you try a sequence that ends lower
##     than its starting value, such as from 10 to 5?
10:5
##   . If you really mean '-' to make all numbers in the
##     ladder to change their signs, how would you do that?
-(10:5)
##   [Just like in math, make use of ROUND parentheses
##    to get the priorities of operations right.
##    Even if the defaults are set right for your intentions,
##    still use parens for your own clarity and readability for others!]

## - What is the number 'pi'?
##   [This is your first example of symbol that stands for something else.]
pi
## - What is the 'sin' of pi/4?
sin(pi/4)
## - What is half of the square root of 2?
##   [Obtain the root as a power and use parentheses
##    to get it right.]
.5*sqrt(2)
## - What is the reciprocal of the square root of 2?
##   [Dito.]
1/sqrt(2)
##   [Compare the three previous results and explain.]
## They are all the same!

## - What is the number 'e'?
##   [Sorry, no fixed symbol for this one.]
exp(1)
## - What is the natural exponential of 10?
exp(10)
## - Write the natural exponential of 10 as 'e' to the power 10.
##   [What is the justification for identical results in the
##    previous two questions?]
exp(1)^10
## - What is the natural logarithm of the previous two results?
##   [You know the answer, but 'confirm' with actual R code.
##    Is the R result a mathematical proof?]
log(exp(10))
log(exp(1)^10)
## - What is the 10-based logarithm of 1,000 and 5,000?
##   [Why would the 10-based log of 5,000 be higher than 3.5?]
log10(1000)
log10(5000)
## - What is the interest on a $1,000 initial investment
##   after 4 years with the following annual financial returns
##   (= yearly percentage gains and losses) shown below.
##   (Biologists: Translate this to cultures of uni-cellular organisms
##    starting with 1,000 cells and the following 1-minute changes.)
##   (Comprehension question: Do you expect to be back to 1,000?)
##     +7%, +9%, -10%, -6%
x <- list(0.07, 0.09, -.1, -.06)
y <- 1000
for (i in x) {
  y <- y * (1+i)
}
print(1000-y)

## - Same question for the following returns:
##     -6%, -10%, +9%, +7%
x <- list(-0.06, -.1, .09, 0.07)
y <- 1000
for (i in x) {
  y <- y * (1+i)
}
print(1000-y)
## - Store the following series of measurements
##   of student heights in inches in a numeric 'vector'
##   (=numeric sequence) and refer to it with the symbol 'x':
##     64, 66, 66, 60, 74, 76, 72, 69, 74, 67
##   [This is your first exposure to an assignment statement
##    and a vectorized function.]
x <- c(64, 66, 66, 60, 74, 76, 72, 69, 74, 67)
## - What is the mean of the sequence stored in 'x'?
mean(x)
## - Same question for the median and standard deviation.
median(x)
sd(x)

## HOW TO LOOK FOR HELP IN R:
## Two fundamental help functions:
help("*")
help("sd")
help(sd)
apropos("*")


## HOW TO OPERATE R OR R-STUDIO IN THE BASIC R CONSOLE:
##
## (0) For one-liners ('one-line code snippets'):
##     Type simple R expressions directly into the R interpreter; then:
##     . Execute with the 'Enter' key.
##     . Get previous code lines back with up/down arrow keys.
##     . Edit one-line expressions with left/right arrow keys,
##       Backspace/Delete keys, and simply typing for insertion.
##
## (1) Write code into a file with a text editor (Notepad, ...)
##       The editor should have syntax help:
##       . syntax highlighting
##       . completion
##     Copy/paste code into the R interpreter
##
## - Method (0) is recommended only for the simplest of tasks,
##   when the code is one-liner and you don't need to retain it for later.
##   Example: Playing with a new function you don't understand yet
##            or experimenting with R syntax.
##
## - Method (1) should be the default for any relevant code
##   longer than one line.
##   It allows you to retain code for later and iteratively
##   debug and expand it.

## [How the instructor operates R using the Emacs editor:
##   . Edit code in one window.
##   . Run R inside Emacs in another window.
##   . Execute R code by copying it from the first to the second window.
##   ==> Not recommended for you, unless you already know the emacs editor.
##       You might be better of using R-Studio.
## ]