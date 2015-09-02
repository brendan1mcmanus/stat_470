

## ------------ INTRODUCTION TO BASICS OF R  ------------


## WHY R?


## HISTORY OF R:  C --> S --> R


## GETTING RSTUDIO: google and install...


#----------------------------------------------------------------


## WHAT YOU CAN DO WITH R RIGHT AWAY:
##
##   Use R as a pocket calculator using math notation.

## EXAMPLES:

## [Use these examples for practice and memorization.
##  Take notes because the answers will NOT be posted!
##  If you missed class, get your answers from a fellow student or TA.
##  Knowing how to get human help is a fundamental skill in life.]

## - What is 1.25% interest on a $1,213.85 bank account balance?
1213.85 * 0.0125
1213.85 * 1.25/100
##   [Make sure to omit the decimal commas in R!]
##   [Note how R shows results: What is the meaning of '[1]'?]

## - Calculate an 18% tip on a $28.50 bill:
28.50 * 0.18

## - What is the 10th power of 2?
2^10

## - Show all positive integers up to 100 (create the ladder 1,2,3,...,100):
1:100

## - Show all integers from 1,001 to 1,100:


## - Show all numbers divisible by 3 below 100:
1:33 * 3

## - Calculate the powers of 2 for 0 up to 20:
2^(0:20)

## - Explorations for integer ladders:

##   . What do you expect to see when you generate
##     a ladder of numbers starting at 1.3 ending below 10?
1.3:10

##   . Same question if you start the sequence with
##     a negative integer such as -3?
-3:10
(-3):10

##   . Same question if you try a sequence that ends lower
##     than its starting value, such as from 10 to 5?
10:5

##   . If you really mean '-' to make all numbers in the
##     ladder to change their signs, how would you do that?
-(3:10)

##    ---------------------------------------------------------------
##   | R SYNTAX:                                                     |
##   |                                                               |
##   | - Just like in math, computer languages require so-called     |
##   |   "order of operations" or "operator precedence".             |
##   |                                                               |
##   | - Again like in math, use ROUND parentheses "()" to force     |
##   |   the order of operations according to your intentions.       |
##   |   (Do NOT use brackets "[]", though -- they won't work!)      |
##   |                                                               |
##   | - Even if the default precedences agree with your intentions, |
##   |   avoid ambiguity for the human reader by using parens        |
##   |   even where they may not be needed.                          |
##   |                                                               |
##   | - You can insert blanks liberally for clarity, but not inside |
##   |   numbers.                                                    |
##    ---------------------------------------------------------------

## - What is the number 'pi'?
##   [This is your first example of a symbol that stands for something.]
pi

## - What is the 'sin' of pi/4?
sin(pi/4)

## - What is half of the square root of 2?
##   [Obtain the root as a power and use round parentheses
##    to get it right.]
2^0.5 / 2

## - What is the reciprocal of the square root of 2?
##   [Dito.]
1/2^0.5

##   [Compare the three previous results and explain!]

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

## - What are the 10-based logarithms of 1,000 and 5,000 and 10,000?
##   [Why would the 10-based log of 5,000 be higher than 3.5?]
log10(1000);  log10(5000);  log10(10000)

## - What is the interest on a $1,000 initial investment
##   after 4 years with the following annual financial returns
##   (= yearly percentage gains and losses) shown below.
##   (Biologists: Translate this to cultures of uni-cellular organisms
##    starting with 1,000 cells and the following 1-minute changes.)
##   (Comprehension question: Do you expect to be back to 1,000?)
##     +7%, +9%, -10%, -6%
1000*1.07*1.09*0.90*0.94

## - Same question for the following returns:
##     -6%, -10%, +9%, +7%
1000*0.94*0.90*1.09*1.07

##    -----------------------------------------
##   | R ARITHMETIC OPERATIONS:                |
##   |                                         |
##   | Unary change/keep sign:       -, +      |
##   | Sequence/ladder:              :         |
##   | Power:                        ^         |
##   | Multiplication/division:      *, /      |
##   | Integer division, remainder:  %/%, %%   |
##   | Addition/subtraction:         +, -      |
##    -----------------------------------------
##
##   Notes:
##   - Distinguish between unary and binary - and +:
         -(1/4)   # unary
         2-(1/4)  # binary
##   - Not yet seen: integer division %/% and remainder %% operation:
         10 %/% 3    # integer division
         10 %% 3     # remainder operation
         (-10) %/% 3 # strange, isn't it?
         (-10) %% 3  # consistent with the strangeness of (-10)%/%3
         2.6 %/% 0.5 # why not try this...
         2.6 %%  0.5 #
##     Both operations work for arbitrary decimal numbers but
##     %/% produces always an integer and %% the associated remainder.
##     More fun:
         (0:20) %/% 3
         (0:20) %% 3
##     This can be used to produce repetition patterns.

##    ---------------------------------------
##   | R MATH FUNCTIONS:                     |
##   |                                       |
##   | Trig:          sin(), cos(), tan()    |
##   | Trig inverses: asin(), acos(), atan() |
##   | Square root:   sqrt()                 |
##   | Exp, log:      exp(), log(), log10()  |
##    ---------------------------------------
##
##   Notes:
##   - Yes, we will have occasion to use logs and trig functions!
##   - Trig functions take 'arc' as an argument, not degrees.
##     (Reminder: arc(degree) = degree/180*pi)
##     If you need the sin of 30 degrees, translate to arc first:
         sin(30/180*pi)
##   - Accordingly, inverse trig functions produce 'arc', not degrees.
##     Translate to degrees:
         asin(1/sqrt(2)) /pi*180


## MISSING NUMERIC VALUES: They are the results of undefined operations.
##
## Examples:
       1/0
       0/0
      -1/0
       1+1/0
       1+Inf
       1/Inf
       1/(-Inf)
       1/NaN
       log(0)

##    -------------------------------------------------
##   | MISSING NUMERIC VALUES IN R:                    |
##   |                                                 |
##   | Inf  :   1/0                                    |
##   | -Inf :  -1/0; log(0)                            |
##   | NaN  :   0/0; log(-1); sqrt(-1); Inf-Inf; NaN+3 |
##   |                                                 |
##   | Do not expect illegal math operations to crash. |
##   | They usually generate a form of missing value.  |
##    -------------------------------------------------


## REPRESENTATION OF NUMBERS:
##
## Examples:
     0.000000001
     1000000000
     -999999999999
## In all cases R rendered the values in exponential form.
## The symbols 'e' and 'E' stands for the exponential base 10.
## You can also use this notation to write numbers:
    1e6
    1E6
    1e+6
    1E+6
    1000000
    10^6
## All produce the result 1 million written in different ways.
## Note that the last form requires an actual computation ('^')
## whereas the previous don't: R knows how to translate them
## to internal representations without doing arithmetic.
##
## Example of a very small number: one millionth can be written as
    0.000001
    1e-6
    1E-6
    1.0000E-6
    10E-7
## The following is incorrect:
    1E(-6)
## No parens in number syntax, please!

## R by default shows decimal numbers to 7 digits precision:
     pi               # 7 digits
     0.999999999      # 8 digits, hence rounded to 7 digits
     0.000000999      # full precision due to exponential notation
     0.0000009999999  # 7 digits, still full precision
     0.00000099999999 # 8 digits, hence rounded to 7 digits
## Numbers are actually represented internally to more digits.
## There is a difference between machine precision and printed precision!

##    -------------------------------------------------
##   | DECIMAL NUMBERS IN R:                           |
##   |                                                 |
##   | - Most general form using 10-based exponential: |
##   |     123.4567E30;  123.4567e-10                  |
##   |                                                 |
##   | - The exponential part can be missing;          |
##   |   the decimal part cannot be missing:           |
##   |     10;  -5;  0.01234;  -12.345  # no exp. part |
##   |     1e10;                        # dec. part 1  |
##   |                                                 |
##   | - Default printing precision in R: 7 decimals   |
##   |   Internal precision: > 15 decimals             |
##    -------------------------------------------------


#----------------------------------------------------------------


## CONCEPT: VARIABLE SYMBOLS AND ASSIGNMENT OF VALUES/DATA

## Examples:
     x <- 1.2   # preferred
     x = 1.2    # same, less preferred
     1.2 -> x   # ok but silly
     x          # Checking the assigned value.
     x1         # Not assigned yet.
     x1 <- 2.3
     x1         # ok
     x2 <- 2*x1
     x2
     rm(x)      # Remove the assignment from x.
     x          # It's gone.
     rm(x1,x2)  # House cleaning.
## Now stretch your imagination and
     AVeryLongSymbolWithDigits0123456789 <- 1.9831
     AVeryLongSymbolWithDigits0123456789 # (Checking the value.)
     My_Sequence <- 1:100    # '_' in a symbol seems to work
     My_Sequence             # ok
     rm(My_Sequence)         # Remove the assigned value.
     My_Sequence             # It's gone.
     My.Sequence <- 1:100    # '.' in a symbol seems to work.
     My.Sequence             # ok
     rm(My.Sequence)         # Clean-up
     1x <- 3.1               # Bombs... incorrect syntax: bad symbol
     .x <- 3.1               # Works!
      _x <- 3.1              # Bombs...
     ._._ <- 3.1             # Works, but silly
     ._._                    # ok
     rm(._._)                # Remove the silliness.

##    -------------------------------------------------------
##   | VARIABLE SYMBOLS IN R:                                |
##   |                                                       |
##   | - Just like in math, we can use 'variable symbols'    |
##   |   to point to values and data.                        |
##   |                                                       |
##   | - We are free to invent symbols, except that they     |
##   |   should start with a letter or a period, followed by |
##   |   letters, digits 0...9, underscores '_', periods.    |
##   |                                                       |
##   | - Assignment of values and data to variable symbols   |
##   |   is done using  <-  or  =  or  -> .                  |
##   |                                                       |
##   | - We can arbitrarily re-assign values and data        |
##   |   to variable symbols.                                |
##   |                                                       |
##   | - To check the value of a symbol, just type the       |
##   |   symbol into the Console followed by 'Enter'.        |
##   |                                                       |
##   | - We can remove assignments with the function rm().   |
##   |                                                       |
##   | - Use the freedom of symbol creation to write code    |
##   |   that is easy for humans to read!!                   |
##    ------------------------------------------------------
##
## Example for the last point:
     x <- 1:20         # Use generic x, y only in simple contexts.
     seq.1.20 <- 1:20  # More to write but easier to understand
     2^(seq.1.20)      # especially when many symbols are used.
     rm(seq.1.20)      # (Cleanup)


## R SYNTAX: COMMENTS, LINE BREAKS, MULTIPLE EXPRESSIONS ON ONE LINE

##    -------------------------------------------------
##   | COMMENTS IN CODE:                               |
##   |                                                 |
##   | - To insert comments in your code, use '#'      |
##   |                                                 |
##   | - Anything following the first '#' is ignored.  |
##   |                                                 |
##   | - Use comments extensively for readability!     |
##    -------------------------------------------------

## You will experience that a month later you will not understand
## your own code anymore unless it is extensively commented.

## [The instructor's editor colors comments orange and code white.]

##    ------------------------------------------------
##   | LINE BREAKS:                                   |
##   |                                                |
##   | - You can break a line of code and continue on |
##   |   on the next line(s) if it is clear that      |
##   |   the expression is not finished yet.          |
##   |                                                |
##   | - Example:                                     |
##   |     1.2 + 2.3 + 3.4 + 4.5 + 5.6 +              |
##   |     6.7 + 7.8 + 8.9                            |
##   |                                                |
##   | - Do NOT break symbols or numbers!             |
##    ------------------------------------------------

     1.2 + 2.3 + 3.4 + 4.5 + 5.6 +
     6.7 + 7.8 + 8.9
##   Note how R asked for more after the first line!


##    ------------------------------------------------
##   | MULTIPLE EXPRESSIONS ON ONE LINE:              |
##   |                                                |
##   | - You can place multiple expressions on one    |
##   |   line separated by a semi-colon ';'.          |
##   |                                                |
##   | - Example:   x <- 1:3;  y <- 2*x;  y           |
##   |                                                |
##   | - If you write long stretches of code,         |
##   |   place every expression on a separate line    |
##   |   for readability.                             |
##    ------------------------------------------------

     x <- 1:3;  x;  y <- 2*x;  y   # Use only for short code snippets.


#----------------------------------------------------------------


## CONCEPT: NUMERIC VECTORS

## This is our first 'composite data structure'.
## (It will be followed by matrices, arrays, lists and data frames.)

## A numeric vector is just a finite sequence of arbitrary numeric values,
## including missing values.
## We got to know some simple examples: equispaced ladders.
## Now we introduce functions to generate arbitrary 'vectors',

## - Create arbitrary finite vectors by listing elements
##   using the function c() ('combine', 'collect'):
       c(1,2,3)    # Same as 1:3
       x <- c(1.3, 0.5, 1000000, -0.001)
       x
       StudentHeights <- c(64,66,66,60,74, 76,72,69,74,67)
       StudentHeights    # A tiny dataset already
## - Create vectors whose values have names:
       Salary <- c(ed=53000, cecilia=53000, beth=49000,
                   john=48000, alex=50000, matt=48000,
                   liz=52000, ruth=55000)
       Salary
## - A very special vector: the EMPTY vector
       c()
       x <- c()
       x
## - Use c() to stack larger vectors from smaller ones:
       c(0, c(1,2), c(3,4,5))  # Same as c(0,1,2,3,4,5)
##   Stack vectors that have already been created:
       x1 <- c(0)
       x2 <- c(1,2)
       x3 <- c(3,4,5)
       y <- c(x1,x2,x3,6,7:9)
       y
##   Thus c() 'flattens' multiple vectors to a single vector,
##   ignoring the hierarchical way in which it may have been created:
       c(0,c(1,c(2,c(3,c(4,5)))))   # This is just 0:5.

## - Ladders, one more time, using the function seq():
       x <- seq(-1, +1, by = 0.01)           # Sae
       x
       x <- seq(-1,+1,length=201)            # Same: Fence post rule --
       x                                     #       201 posts have 200 spaces.
       x <- seq(from=-1, to=+1, length=201)  # Same
       y <- seq(along=x)
       seq(length=0)                         # The empty ladder!

## - Create repeat patterns with rep():
       rep(pi, 10)
       rep(x=pi, times=10)      # same
##   Repeating vectors: this is the powerful use of rep()
       rep(1:3, times=5)
       rep(1:3, times=2:4)      # repeat 1 twice, 2 three times, 3 four times
       rep(1:3, times=rep(5,3)) # clumsy for something so simple, right?
       rep(1:3, each=5)         # this is the simpler way
       rep(1:3, length=10)      # if you want a certain length

##    -------------------------------------------------------
##   | FUNCTIONS TO GENERATE VECTORS:                        |
##   |                                                       |
##   | - c()     # arguments: named and unnamed              |
##   |                                                       |
##   | - seq()   # arguments: from, to, by, length           |
##   |                                                       |
##   | - rep()   # arguments: x, times, each, length         |
##   |                                                       |
##    ------------------------------------------------------


#----------------------------------------------------------------


## CONCEPT: FUNCTIONS IN R

## Apart from operations such as +, -, *, /, ^, any programming
## language has a notion of 'function' (sometimes called 'procedure').
## In fact, functions are more fundamental because operations are
## really just special functions of one or two arguments.

## An important fact is that functions are objects that can be
## assigned to variable symbols.  For example, the instructor
## is too lazy to write the function length() in full:
      x <- 1:1000
      length(x)
## So he assigns the function to a shorter symbol:
      len <- length
      len(x)
      length(x)
## The original assignment to 'length' still exists, but
## the symbol 'len' is now also assigned the same function.

## Later we will learn how to program our own functions.
## This is in fact one of the most important skills in
## any programming language.

## Here are basic principles for handling functions in R:

##    -------------------------------------------------------
##   | FUNCTIONS IN R:                                        |
##   |                                                        |
##   | - Just like math, R has 'functions' to execute tasks.  |
##   |                                                        |
##   | - R functions are written similar to math              |
##   |   as in:   f(x);  g(x,y);  h(x,y,z)                    |
##   |                                                        |
##   | - All R functions return a result which can be         |
##   |   assigned to a variable symbol, as in:  y <- f(x)     |
#    |   or fed to another function, as in:  g(f(x))          |
##   |                                                        |
##   | - Unlike math, R has a concept of 'named arguments',   |
##   |   as in:   seq(from=-1, to=+1, by=0.01)                |
##   |                                                        |
##   | - If a function is called WITHOUT argument names,      |
##   |   the meaning is by position, like in math:            |
##   |     seq(-1, +1, 0.01)                                  |
##   |   It is generally recommended to use named arguments.  |
##   |                                                        |
##   | - Depending on the number of unnamed arguments,        |
##   |   the meaning can be quite different:                  |
##   |     seq(10)                                            |
##   |   is the same as:                                      |
##   |     seq(from=1, to=10, by=1)                           |
##   |   ==> 'from=1' and 'by=1' are defaults and             |
##   |     only the 'to' argument needs to be specified       |
##   |                                                        |
##   | - If a function is called WITH argument names,         |
##   |   they can be given in any order:                      |
##   |     seq(by=0.01, to=+1, from=-1)                       |
##   |   This is not recommended, though.                     |
##   |                                                        |
##   | - Argument names can be shortened, but must be long    |
##   |   enough to identify the argument uniquely:            |
##   |     seq(lenght.out=10)                                 |
##   |     seq(lenght=10)                                     |
##   |     seq(len=10)                                        |
##   |     seq(l=-5)   # bombs                                |
##   |     seq(-5)     # default single argument: to=...      |
##   |                                                        |
##   | - When there are many arguments, do not rely on        |
##   |   argument position; use argument names for            |
##   |   for clarity:                                         |
##   |     seq(-100,+100,10)                                  |
##   |     seq(from=-100,to=+100,by=10)                       |
##   |     seq(from=-100,to=+100,len=10)                      |
##   |                                                        |
##   | - Functions are objects that can be assigned to        |
##   |   variable names:                                      |
##   |     len <- length                                      |
##   |                                                        |
##   | - Sometimes one calls a function without arguments,    |
##   |   but one still needs to use parens:                   |
#    |     c(); seq(); rep()                                  |
##   |                                                        |
##   | - Functions can be arguments to other functions, as in |
##   |     help(seq)                                          |
##   |                                                        |
##   | - Find documentation about functions as follows:       |
##   |     help(c)                                            |
##   |     help(seq)                                          |
##   |     help(rep)                                          |
##   |   Equivalent:                                          |
##   |     ?c                                                 |
##   |     ?seq                                               |
##   |     ?rep                                               |
##   |   [Warning: help() may be cryptic.]                    |
##    --------------------------------------------------------


#----------------------------------------------------------------


## CONCEPT: VECTOR COMPUTATIONS

## The simplest forms of data consisting of a single variable
## can be stored in a vector.  (Later we will introduce matrices
## and dataframes for data with more variables.)
## Two typical tasks on such simple data are:
##
##   (1) Compute a numeric summary, such as the sum, mean, sdev, median, min, max.
##       This task produces a single numeric result from a vector.
##
##   (2) Transform the data, for example, by changing the units ($->Euro)
##       or by taking a log when the vector contains ratio-scale* data,
##       or turning a series of stock prices into financial returns,
##       or sorting the values.  This task produces another vector.
##
##   (3) Combine multiple vectors element by element:
##       You have a vector of amounts of goods and a vector of prices of the goods;
##       calculate a vector of total prices of these goods.
##
## Let's use the following set of heights in inches of 20 Penn students,
## extracted from a larger dataset:
      StudentHeights <- c(64.0, 66.0, 66.5, 60.0, 74.0, 76.0, 72.0, 69.0, 74.0, 67.0,
                          74.0, 59.0, 65.5, 63.0, 69.0, 66.8, 66.0, 75.0, 69.0, 69.8)

## TASK (1), frequntly used functions:
      length(StudentHeights)
      sum(StudentHeights)
      mean(StudentHeights)
      sd(StudentHeights)
      median(StudentHeights)
      min(StudentHeights)
      max(StudentHeights)
      quantile(StudentHeights, probs=0.25)
      quantile(StudentHeights, probs=0.00)
      quantile(StudentHeights, probs=1.00)
## We said above that numeric summary functions return a single numeric result.
## That's not quite true.
## Consider these possibilities with the 'quantile()' function:
      quantile(StudentHeights, probs=seq(0,1,by=.10))
## What are these called? ...

##    ------------------------------------
##   | FREQUENTLY USED SUMMARY FUNCTIONS: |
##   |                                    |
##   |   length();  sum()                 |
##   |   mean();    sd()                  |
##   |   median();  quantile()            |
##   |   min();     max()                 |
##    ------------------------------------


## TASK (2), frequently used transformations:
      StudentHeights * 2.540   # Every element is multiplied by this factor
      Salary.log10 <- log10(Salary)
      Salary.log10
## The last is not very meaningful because the salaries are so close
## together.  Log-transforms make most sense when the values spread
## out by orders of magnitudes, as when the data contain a worker's
## salary as well as the CEO's.

## TASK (3), combining more than one vector to a new vector, element by element:
      amounts <- c(apples=2.0,  bananas=5.0,  oranges=4.5)   # amounts in lb
      prices  <- c(apples=3.50, bananas=1.25, oranges=2.5)   # prices in $/lb
      costs   <- amounts * prices                            # total costs in $
      total.cost <- sum(costs)
## Show the results:
      costs
      total.cost

## We assumed the vectors are the same length.  This doesn't have to be so:
      (1:10) * (1:2)
## Seems to do something.  What is it? ...
## Here is a more messy case:
      (1:10) * (1:3)
## What happened?  ...


##    --------------------------------------------------------
##   | RULES OF VECTOR ARITHMETIC:                            |
##   |                                                        |
##   | - Apply operations and transformations elementwise.    |
##   |                                                        |
##   | - In operations with two or more arguments, if one     |
##   |   argument is shorter than the other, it gets          |
##   |   recycled to the length of the longer argument        |
##   |                                                        |
##   | - If the longer argument is not longer by an           |
##   |   integer multiple, the operation is still carried,    |
##   |   truncating the shorter argument in the last recycle, |
##   |   but generating a warning!                            |
##    --------------------------------------------------------

## Trick question: What happens here?  ...
      amounts <- c(apples=2.0,  bananas=5.0,  oranges=4.5)   # amounts in lb
      prices  <- c(bananas=1.25, oranges=2.5, apples=3.50)   # prices in $/lb
      amounts*prices


#----------------------------------------------------------------


## R AS A FUNCTION GRAPHING DEVICE

## You may have a pocket calculator with a graphing feature.
## We can do graphing of functions in R using the 'plot()' function.
## The method is to draw the curves approximately as a series of
## very fine line segments ('discretization').  The human eye
## won't be able to tell the difference.
##
## Principles for graphing a function y = f(x):
## (1) Decide on a domain interval for x, such as (-4,+4), and
##     generate a fine ladder from end to end of the interval:
         x <- seq(-4, +4, by=.01)
## (2) Generate the y values at the ladder values of 'x':
         y <- x^2
## (3) Plot 'y' against 'x':
         plot(x, y, type="l")


## EXPLANATIONS FOR THE FUNCTION 'plot()':
##
## - What 'plot()' does:
##   To draw the i'th point, it uses
##   the i'th number in 'x' as the horizontal coordinate, and
##   the i'th number in 'y' as the vertical coordinate.
##
## - The funny argument 'type="l"' tells the plot function to
##   connect the (x,y) coordinates by lines in the given order.
##   Without this argument, it looks like this:
         plot(x, y)
##   The function plots points as small circles by default.
##
## - The function has actually two named arguments,
##   with names 'x' and 'y', so you can also write
         plot(x=x, y=y)
##            ^    ^   argument names
##   Try this:
         plot(x=1:100, y=c(1:50,50:1))
         plot(y=c(1:50,50:1), x=1:100)
         plot(  c(1:50,50:1),   1:100)
##   Why do the first two expressions plot the same but not the third?  ...


## More examples:
## - Cube:
         y <- x^3;     plot(x, y, type="l")
## - 4th power:
         y <- x^4;     plot(x, y, type="l")
## - Reciprocal:
         y <- x^(-1);  plot(x, y, type="l")
## - Exponential:
         y <- exp(x);  plot(x, y, type="l")

## Shorter code without introducing 'y':
         plot(x=x, y=exp(x), type="l")  # Here we like named args.


## So far we assumed we wanted to plot just one function at a time.
## If we want to have multiple functions on the same plot, the
## above does not work.  Why?  ...


## GRAPHS WITH MULTIPLE FUNCTIONS:
##
## Wrong:
         plot(x, x^2, type="l")
         plot(x, x^3, type="l")
## We need a function that draws the second curve in the existing plot
## without wiping it out.  ==>  Use the function 'lines()'.
         plot(x, x^2, type="l")
         lines(x, x^3)
## Still bad!  The function 'x^2' determined the vertical range,
## which is wrong for the function 'x^3'.
## We must be more systematic and build up the plot in steps:
##
## (1) Decide on a domain interval for 'x' and create a fine ladder.
         x <- seq(-4, +4, by=0.01)
##
## (2) Create the y-coordinates for the functions:
         y.2 <- x^2
         y.3 <- x^3
##
## (3) Find the range values across all y vectors:
         y.range <- c(min(y.2, y.3), max(y.2, y.3))
##     There is only one x vector, but we get its 'min()' and 'max()' as well:
         x.range <- c(min(x), max(x))
##
## (4) Set up an empty plot to accommodate all x values horizontally
##     and all y values vertically:
         plot(x=x.range, y=y.range, type="n")
##                                       ^^^ plot nothing, just create a frame
         lines(x, y.2)       # Plot the square function in the current frame
         lines(x, y.3)       # Plot the cube   function in the current frame
##     Better in color: there is an arg 'col=...'
         lines(x, y.2, col="red")
         lines(x, y.3, col="blue")
##     Still better in color: thicker curves using the arg 'lwd=...'
         lines(x, y.2, col="red",  lwd=2)   # line width = twice default
         lines(x, y.3, col="blue", lwd=2)
##     We still don't like the axis labels.  Make them 'x' and 'y':
         plot(x=x.range, y=y.range, type="n", xlab="x", ylab="y")
         lines(x, y.2, col="red",  lwd=2)
         lines(x, y.3, col="blue", lwd=2)
##     Next idea: let's add horizontal and vertical lines through the origin!
##     To this end we could use this:
         lines(x.range, c(0,0),  col="gray")
         lines(c(0,0),  y.range, col="gray")
##     (There is another function for this case, but let's stick with what we have.)

##     Now we're quite happy.
##     Except: The cube curve dominates with its large y-range.
##     ==> Let's trim the x-range to c(-2,+2) to dampen the y-range.
##     So we redo the whole thing, and hopefully this will be our final code:
         x <- seq(-2, +2, by=0.01)
         y.2 <- x^2
         y.3 <- x^3
         x.range <- c(min(x), max(x))
         y.range <- c(min(y.2, y.3), max(y.2, y.3))
         plot(x=x.range, y=y.range, type="n", xlab="x", ylab="y")
         lines(x.range, c(0,0),  col="gray")
         lines(c(0,0),  y.range, col="gray")
         lines(x, y.2, col="red",  lwd=2)
         lines(x, y.3, col="blue", lwd=2)
##     We finally see that the square is above the cube on the interval (0,1).
##     Note one detail: We drew the horizontal and vertical lines
##     before we drew the curves.  Why?  ...
##     In all, we can be satisfied.

##     For these particular functions we could add more helpful lines:
         lines(x=x.range,  y=c(+1,+1), col="gray")
         lines(x=c(+1,+1), y=y.range,  col="gray")
         lines(x=c(-1,-1), y=y.range,  col="gray")


#----------------------------------------------------------------



