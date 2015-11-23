##================================================================
#
#
#  ---------- INTRODUCTION TO BASICS OF R  ------------


##                        WHY R?

## HISTORY OF R:  C --> S --> R


## GETTING RSTUDIO: google and install... (see Syllabus)


##================================================================


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
##   | INSERTING COMMENTS IN CODE:                     |
##   |                                                 |
##   | - To insert comments in your code, use '#'      |
##   |                                                 |
##   | - Anything on the line following the first '#'  |
##   |   is ignored.                                   |
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
##   Counter example: The following are two complete expressions,
##                    no continuation.
     1.2 + 2.3 + 3.4 + 4.5 + 5.6
     + 6.7 + 7.8 + 8.9


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
       save.image()      # save this vector for future sessions.
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
      save.image()       # Save this vector for future sessions.
##
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


#================================================================


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


#================================================================


## CHARACTER DATA / STRINGS / TEXT DATA

## We use synonymously: 'text' = 'string' = 'character data'
## Character data has many uses:
## - It can label groups of data.
##     Examples: gender groups (female, male)
##               age groups (child, adolescent, adult, senior)
##               color groups (red, green, blue, ...)
##               brand/make groups (Ford, GM, Chrysler, Mercedes, ...)
## - Often text is the original form of 'data',
##     as when financiers do 'text mining' of financial news
##       (e.g., from news feeds such as Bloomberg, Reuters, ...)
##     or medical researchers do 'text mining' of the medical literature
##       (through PubMed).


## * REPRESENTATION OF CHARACTER DATA IN R:
     "xyz"
     'xyz'
## Execute these lines -- they are code!
## Both single and double quotes are permitted interchangeably,
## but you CANNOT MIX THEM!
## ("xyz' is incomplete and R will expect more characters to follow.)
##
## Executing the above line, you will have noticed
## that R always renders strings with double quotes.
##
## We say interchangeably: "xyz" is
## - 'a string' or
## - 'text' or
## - 'a character datum' or
## - 'character data'.
## (Strictly speaking, 'data' is the plural of 'datum'.)


## * STRINGS REPRESENT 'ATOMIC' R DATA, just like numbers,
## but of a different TYPE.
## The type of data can be found out with the function
## 'typeof()':
     typeof("xyz")
     typeof(1.2)
## Remember that all R functions return something?
## The 'typeof()' function returns character data, namely,
## the string "double" for decimal numbers ("doube precision numbers"),
## and the string "character" for strings.
## (Later we will encounter further data types.)


## * STRINGS CAN BE ASSIGNED TO VARIABLES:
     MyFullName <- "Andreas Buja"
     MyFullName


## * STRINGS CAN BE COLLECTED IN VECTORS, just like numbers:
     NamesStat470 <- c("Andreas Buja", "Michael Sklar", "Matt Olson")
     NamesStat470
## This is a character vector:
     typeof(NamesStat470)
## Remember vectors with names?
## Here is a more informative representation using named elements:
     NamesStat470 <- c(Instructor="Andreas Buja", TA1="Michael Sklar", TA2="Matt Olson")
     NamesStat470
     save.image()    # Save this vector for future sessions.
## Here is a 'political' vector:


## * MORE EXAMPLES of text/strings/character data:
     CaptainHaddock <- "#@&*!"
     Conversation <- c("President Trump.",
                       "Huh?",
                       "When I heard this, I got, like, my jaw dropped, and I was, like, out of my mind and, like, ...",
                       "Say again?",
                       "He rocks!",
                       "Based on my analysis using a Bayesian model I only gave him, like, odds of 1 in 75.",
                       "I hear he has, like, a Wharton degree!",
                       "")
## Yes, this last element is a string, the empty string ("sounds of silence"?).


## * WARNING: The following represent two different types of data!
     1.2345
     "1.2345"
## As a consequence, the following bomb:
     "2.3"+"1.2"
     2.3+"1.2"


## * VECTORS MUST HAVE ELEMENTS OF THE SAME TYPE!
## That is, you can't mix character and numeric data:
     c(1.1, "abc")
     c(String="1.2345", Number=1.2345)
## What happens?
## ...
## This is your first example of so-called 'TYPE COERCION'!
## When combining atomic data that are a mix of character and numeric data,
## R wants all of them to be character data, hence it forces the numbers
## to become strings
## (Can you find a reason why the designers of a computer language
## might decide that numbers should get coerced to text if necessary,
## and not the other way round?
## ...)


## * USES OF CHARACTER DATA (1): GROUPING / FORMING CATEGORICAL VARIABLES
     StudentGenders <- c("male",  "male",  "female","male",  "female",
                         "female","female","male",  "female","female",
                         "female","male",  "male",  "male",  "female",
                         "male",  "female","female","female","female")
     save.image()      # Save this vector for future sessions.
     length(StudentGenders)
## This vector matches the heights in inches in 'StudenthHeights',
## so now we know which height belongs to a female or a male student.
## Shortly we will learn how to extract a subvector, for example, from
## 'StudentHeights' for female students using 'StudentGenders'.
## You will then be able to do statistics on gender groups separately
## and compare the groups.


## * USES OF CHARACTER DATA (2): TEXT ANALYSIS -- FEATURE EXTRACTION
## Here is an example of text data extracted from NYTimes article
## (2015/09/07), the first five sentences:
     NYT.tennis <- c("One of the familiar sights in tennis has been the appearance of Andy Murray in the quarterfinals of a major tournament.",
                     "Kevin Anderson? He had never reached that round of a major.",
                     "Anderson, a 29-year-old South African who played in college at Illinois, has been competing in major tournaments since 2008, but seven trips to the fourth round of a major ended in a loss.",
                     "Aside from the 2013 French Open, which he did not enter, Murray had reached every major quarterfinal since 2011.",
                     "But that pattern came to a stunning reversal Monday when Anderson upended the third-seeded Murray, 7-6 (5), 6-3, 6-7 (2), 7-6 (0), in Louis Armstrong Stadium in the biggest upset of the men??s draw in this year??s United States Open." )
     NYT.tennis
     length(NYT.tennis)
## Because the sentences are long, they reach beyond our line length,
## hence require wrap-around.
## Note that we did not use the line breaks shown in the NYTimes because
## we are interested in analyzing sentences, not lines.
## Q: What can we do with such text data?
## A: We can perform so-called FEATURE EXTRACTION, that is,
##    characterizing each sentence by numbers.
##    'features' = numeric properties of strings
## The simplest numeric feature is the length of a string measured
## by its number of characters.  This can be done with the function
##   nchar()
## The code for the five sentences is:
     nchar(NYT.tennis)
## This includes ALL CHARACTERS:
##    spaces, periods, commas, parens, digits, dashes, ...
## The function 'nchar()' returns as result a numeric vector consisting
## of 5 integers representing the feature 'length in characters'
## for each sentence.
## This is just a trivial example of feature extraction.
## More interesting features would be word counts, e.g.,
## the number of appearanes of specific words such as
## "Murray", "Anderson", ...
## We will learn later how to do these things.
##
## TASK: Calculate the total number of characters in the 5 sentences.
     sum(nchar(NYT.tennis))
## TASK: Calculate the mean length of the 5 sentences.
     mean(nchar(NYT.tennis))

## BACKGROUND:
## - Such tools have been used, for example, to identify authors,
## as when an ancient text is thought to be authored by
## the philosopher Plato but one is not sure.
## A famous example is uncertain authorship of some of the
## Federalist Papers from the days before the US Constitution
## was voted on: Were the uncertain papers written by
## Madison, Hamilton or John Jay?  We have writings from
## from all three, so we can establish their average sentence
## lengths, for example.  Comparing the average sentence length
## of an uncertain document with the known average sentence lengths
## of the three authors, one may obtain evidence as to who the true
## author might have been.  (In reality, of course, one would use many
## more 'features' to characterize the writing styles of authors.)
## - In finance one might be interested in the direction in which
## certain markets are moving, so one might search news feeds
## for the occurrence of expressions such as "markets are down",
## "yield is up", "GM stock", "treasury", "Federal Reserve",
## "inverted yield curve", ...
## - In marketing, firms download the customer comments from their
## webpages and those of consumer blogs and analyze them by
## searching for comments about a specific product (e.g.,
## "Samsung Galaxy") and aspects of user experience ("sucks",
## "amazing", ...).
##
## Later we will learn how to define text patterns and search
## text collections for such patterns.


## * TRICK QUESTIONS: What is returned by the following?
     nchar("")            # The empty string is not 'nothing'.
     nchar(" ")           # A blank/space is a character.
     nchar("  ")          # Each blank counts as a character.
     nchar("! @ # $ % ^ & * ( ) _ + _ =")  # Non-standard characters


## * COMMON TASK: PASTING TEXT DATA
## You might easily see the utility of the following function:
##   paste()
## As the name says, it pastes text strings together.
## Example:
     FirstNamesStat470 <- c("Andreas", "Michael", "Matt")
     FirstNamesStat470
     LastNamesStat470  <- c("Buja",    "Sklar",   "Olson")
     LastNamesStat470
     paste(FirstNamesStat470, LastNamesStat470)
## That is, 'paste()' pastes the strings in the argument vectors
## element by element, first with first, second with second, ...
     save.image()      # Save these vectors for future sessions.


## * STRING SEPARATION IN PASTING: 'paste()' has an argument 'sep' for
## 'separation string' which is by default set to a blank: " ".
## This is the reason why the above 'paste()' statement separates
## first and last names with a blank.
## Now, for alphabetic sorting it is more convenient to have a full name
## according to the convention "LastName, FirstName".  We can achieve this
## by setting the argument 'sep' to the string ", ", i.e., a comma
## followed by a blank:
     paste(LastNamesStat470, FirstNamesStat470, sep=", ")


## * MULTIPLE ARGUMENTS TO 'paste()':
## If you wanted to not only paste first and last names but also
## prepend "1.", "2.", "3." for a numbered list, how would you do this?
## Solution:
     paste(c("1.","2.","3."), FirstNamesStat470, LastNamesStat470)
## Alternative:
     paste(c("1)","2)","3)"), FirstNamesStat470, LastNamesStat470)  # (*)
## That is, you can give multiple arguments, and they all get
## pasted element by element (all firsts, all seconds, ...).


## * RECYCLING OF SHORTER ARGUMENTS:
## This is not peculiar to 'paste()' but holds for many functions
## that operate elementwise: Shorter arguments get recycled to the
## length of the longest argument.
## Let's try to achieve the effect of the line marked (*) as follows:
     paste(c("1","2","3"), ")", FirstNamesStat470, LastNamesStat470)
## This is not quite right because we don't want "1 )" but "1)".
## The following will work:
     paste(c("1","2","3"), ") ", FirstNamesStat470, " ", LastNamesStat470, sep="")
## We set 'sep' to the empty string and use instead the single arguments
## ") " and " " which get recycled to the length of the other arguments.


## * COERCION OF NUMERIC ARGUMENTS TO TYPE 'CHARACTER':
## In 'paste()' we don't need to provide the argument 'c("1","2","3")'
## as strings; we can provide '1:3' because it will be coerced
## to 'c("1","2","3")':
     paste(1:3, ")", sep="")
## This is a general rule and holds also for other functions
## that expect string arguments, as we will see.


## * RESULTS OF FUNCTIONS AS ARGUMENTS TO OTHER FUNCTIONS:
## The following line solves the same problem as before by
## first pasting '1:3' and ")" WITHOUT separating blanks, then
## pasting the result to first and last names WITH separating blanks:
     paste(paste(1:length(FirstNamesStat470), ")", sep=""),
           FirstNamesStat470,
           LastNamesStat470)

## - NOTE ON PROGRAMMING STYLE:
## It is often good to anticipate that your code will be
## applied to more general data.  Assume, for example,
## that two more TAs are joining us, so 'FirstNamesStat470'
## and 'LastNamesStat470' grow from length 3 to length 5.
## What happens then to our paste job?
## How can you generalize the paste job so it works,
## never mind how long the vectors of names are?
## Modify the code with your solution:
     paste(paste(???, ")", sep=""),
           FirstNamesStat470,
           LastNamesStat470)
## The only assumption that the corrected code makes is that
## 'FirstNamesStat470' and 'LastNamesStat470' are of the same
## length.


## * ALPHABET: 'LETTERS' and 'letters' are vectors of length 26
## containing upper and lower case letters.
     LETTERS
     letters
## What do the following paste expressions do?  Think before you check!
     paste(LETTERS, letters, sep="")
     paste(1:length(LETTERS), ". ", LETTERS, sep="")


## * PASTING BY COLLAPSING A VECTOR TO A SINGLE STRING:
## So far we have pasted element by element, but sometimes we need to
## to paste all the content of a string vector into a single string.
## This can be done with 'paste()' using the argument 'collapse', which
## wants a separator string for 'collapsing' the character vector.
## Examples:
     paste(letters, collapse=" ")
     paste(letters, collapse="")
     paste(Conversation, collapse="  ")
     paste(NYT.tennis, collapse="  ")
## How long is this last string?  Compare with the total number
## of characters calculated earlier.
     nchar(paste(NYT.tennis, collapse="  "))
     sum(nchar(NYT.tennis))
## You can generate very long strings with 'collapse':
     LongString <- paste(1:10000, collapse=" ")
     LongString
     nchar(LongString)


## * REPEAT PATTERNS WITH TEXT: 'rep()' works with text data, too.
     rep(letters, 2)
     rep(letters, times=2)
     rep(letters, each=2)
     rep(Conversation, 3)
## TASK: Combine the letters "x", "y" and "z" with
##       the digits 0:9 in all possible ways.
     paste(c("x","y","z"), rep(0:9, each=3), sep="")
## Explain why this expression accomplishes the task.


## * SUBSTRING EXTRACTION: 'substring()'
     substring("abcdefghijklmnopqrstuvwxyz", 6, 10)
## The second and third arguments are 'first' and 'last':
     substring("abcdefghijklmnopqrstuvwxyz", first=6, last=10)
## If you are not sure how long strings in a vector are, and you want
## to extract all letters starting with the 6th, say, all the way to
## the end, you can just omit the last argument:
     substring("abcdefghijklmnopqrstuvwxyz", first=6)
## (Confusing: There is also a function 'substr()' which does almost the same,
##  but its corresponding arguments are named 'start' and 'stop',
##  and 'stop' cannot be omitted.)
## - TASK: Recode gender as "f" and "m" instead of "female" and "male"
##         in 'StudentsGender'
     StudentGenders.short <- substring(StudentGenders, 1, 1)
     StudentGenders.short
## - TASK: Extract the last character from each of the strings in 'NamesStat470'.
     substring(NamesStat470, ???)
## - COERCION from numeric to character happens also in "substring()':
     substring(10000+1:1000,2,4)
     substr(pi, 1, 100)  # You're seeing machine precision of 'pi'.


## * STRING SUBSTITUTION: 'sub()' and 'gsub()'
## Both functions have arguments 'pattern', 'replacement' and 'x',
## where the first two arguments are string atoms (length=1) and
## 'x' is a string vector:
     sub("a", "oo", NamesStat470)
     gsub("a", "oo", NamesStat470)
     sub("Buja", "Booyah", NamesStat470)
     gsub("Buja", "Booyah", NamesStat470)
## The last two produce the same because "Buja" appears just once.
##
## - Of course there is COERCION of type numeric to type character:
## 'sub()' and 'gsub()' expect all arguments to be of type character.
## As a consequence, what does the following expression do?
     gsub(1, 0, 1:100)
## So much coercion is not recommended, though.  Better style is this:
     gsub("1", "0", 1:100)
##
## - Let's play with filler expressions in 'Conversation':
     gsub("like", "uhm",      Conversation)  # 1980s?
     gsub("like", "you know", Conversation)  # geeky?
     gsub("like", "actually", Conversation)  # Someone I knew.
     gsub("like", "kind of",  Conversation)  # almost works, not quite
## Now you REALLY know what R is good for!
##

## * GETTING AT NAMES OF VECTORS WITH ELEMENT NAMES:
## - For vectors whose elements have names, one would like to
## to be able to get at the names:
     names(Salary)
## The function 'names()' returns a vector of strings consisting
## of the element names.
##
## - Use of character data for labeling plots:
##   [Define a new vector with ages for 'Salary':]
     Salary.age <- c(ed=36, cecilia=32, beth=29, john=28,
                     alex=33, matt=27, liz=35, ruth=37)
     save.image()      # Save this vector for future sessions.
##
## Make sure we got the names right.
     names(Salary.age)
     names(Salary)
## Plot 'Salary' against 'Salary.age':
     plot(x=Salary.age, y=Salary)
## and label the plot with the names:
     text(x=Salary.age, y=Salary, labels=names(Salary))
## Not publication quality yet.  See homework 2.


##================================================================


## DATA OF TYPE 'LOGICAL' AND BOOLEAN OPERATIONS


## * MOTIVATION:
## Data analysis and computations often require 'decisions'
## depending on whether some conditions are true or false.
##
## - A common task in data analysis is to select subsets of data,
## as when we ask for the list of individuals whose Salary is 50,000
## or higher.  To this end one has to tell for each individual
## whether Salary >= 50,000 is true or false.
## [Databases rely on a big science of formulating 'queries' whose
## outcomes are true or false for any individual, and selecting
## subtables consisting of individuals for which the 'query' is true.
## In a sense, we are creating here the R version of data base queries.]
##
## - Iterative algorithms often make 'decisions' depending on the
## results of previous computational steps.  For example,
## a bisection search for a zero crossing of a continuous monotone
## increasing function f(x) needs to step
##   . down in x if 'f(x) > 0' is true, and
##   . up   in x if 'f(x) < 0' is true.
## We therefore need a notion of 'true' and 'false' of conditions
## and ways to act on them.  All programming languages provide
## mechanisms to do that.  Here is R's:


## * LOGICAL DATA:
## Logical data can have just two possible values:
       TRUE;  FALSE
## They can also be written as
       T; F
## but R writes them back as TRUE and FALSE,
## hence T and F are only abbreviations.
## 'TRUE' and 'FALSE' are reserved symbols.
## Do note use them as variable symbols, i.e., do not do this:
       TRUE <- 2.0
## which is as silly as
       3.0 <- 2.1
## While numeric and character data can have almost unlimited numbers
## of different values, 'logical' data (sometimes called 'Boolean' data)
## are limited to just two values, but they are crucial to any type of
## computation and data analysis.
##
## Logical values are objects that can be assigned to variables:
       MyLogic <- TRUE
       MyLogic
       MyLogic <- T
       MyLogic
## And they can be collected in vectors:
       MyLogicals <- c(T,F,T,T,F,T,T)
       MyLogicals
## The function 'typeof()' returns their type as 'logical':
       typeof(TRUE)
       typeof(F)
       typeof(MyLogic)
       typeof(MyLogicals)


## * COERCION OF DATA OF TYPE 'LOGICAL':
       0 + TRUE      # 1
       0 + FALSE     # 0
       0 + T         # 1
       0 + F         # 0
       paste(TRUE)   # "TRUE"
       paste(FALSE)  # "FALSE"
       paste(T)      # "TRUE"
       paste(F)      # "FALSE"
##
##    -------------------------------------
##   | COERCION RULES FOR TYPE 'LOGICAL':  |
##   |                                     |
##   | - Coercion to 'numeric':            |
##   |       TRUE  --> 1                   |
##   |       FALSE --> 0                   |
##   |                                     |
##   | - Coercion to 'character':          |
##   |       TRUE  --> "TRUE"              |
##   |       FALSE --> "FALSE"             |
##    -------------------------------------
##
## QUIZ QUESTIONS:  What do the following do?
       exp(TRUE)
       FALSE^3
       substring(TRUE, 1, 1)
       sub(T,F,"TRUE")
       sub(T,F,T)
       sub(T,F,"T")


## * HOW LOGICAL VALUES ARE GENERATED:
##     - Functions that return logical data
##     - Comparison of numeric data
##     - Comparison of character data
##     - Logical operations 'or', 'and', 'not'.
##   These will be illustrated next.


## * FUNCTIONS THAT RETURN LOGICAL DATA:
       is.numeric(1.23)
       is.character(1.23)
       is.logical(1.23)
       is.numeric("Stat 470")
       is.numeric("470")
       is.character("470")
       is.logical(F)
       is.logical(FALSE)
       is.numeric(1:10)
       is.numeric(letters)
       is.numeric(c(1,F,"a"))   ## !!! think through this vector !!!
## These functions return A SINGLE LOGICAL VALUE.
## They don't operate element-by-element on vectors
## because in vectors all elements must have the same type.
## Quiz question: What do the following return?
       is.character(LETTERS)
       is.numeric(pi*(0:5))

## * COMPARISON OPERATIONS ON NUMERIC DATA:
       2 < 3         # strictly less
       2 > 3         # strictly greater
       2 <= 3        # less or equal
       2 >= 3        # greater or equal
       2 == 3        # equal
       2 == 2        # equal
       2 != 2        # not equal
       3.14159 == pi # FALSE -- why?
##   Comparison operations on vectors work element by element:
       (1:10) > (10:1)
##   There is recycling:
       1:10 >= 6
##
##    -----------------------------------------------------
##   | SOURCES OF MANY ERRORS:                             |
##   |                                                     |
##   |    2 = 2         WRONG!   ('=' is '<-', assignment) |
##   |    2 == 2        CORRECT! (comparison operation)    |
##   |                                                     |
##   |    (0.5 - 0.3) == (0.3 - 0.1)   # FALSE!            |
##   |    ==> DO NOT USE '==' FOR NUMERIC COMPARISONS OF   |
##   |    DECIMAL NUMBERS, EXCEPT FOR INTEGERS:            |
##   |    (5 - 3) == (3 - 1)                               |
##   |    REASON: UNPREDICTABLE ROUNDING OF DECIMALS       |
##    -----------------------------------------------------
##   Let's try the boxed examples:
       2 = 2                        # Just a silly mistake.
       2 == 2                       # TRUE
       (0.5 - 0.3) == (0.3 - 0.1)   # FALSE on most machines!! BIG SURPRISE!
       (5 - 3) == (3 - 1)           # TRUE
       3.14159 == pi                # FALSE, correctly
##   To solve comparison problems for near-identity of decimal numbers,
##   use a tiny threshold for comparison:
       eps <- 1E-10       # 'eps' for 'epsilon', used in math for small numbers
       abs((0.5 - 0.3) - (0.3 - 0.1)) < eps    # TRUE
##   The function 'abs()' returns the absolute value of its argument,
##   element by element:
       abs((-5):(+5))
##   One more example:
       abs(3.14159 - pi) < eps
##   We'd have to raise 'eps' to 1E-5 to obtain TRUE in this case.
##   [A problem with thresholds is that they are unit-dependent.
##    For example, if height of humans were expressed in miles,
##    one would obtain very small numbers according to
##       (height in miles) = (height in inches) / 63360
##    and suddenly a threshold of 'eps <- 1E-10' is no longer
##    very small.  It would have to be changed to 'eps <- 1E-10/63360'
##    to be equivalent to 'eps <- 1E-10' in inches.
##    ]


## * COMPARISON OPERATIONS ON CHARACTER DATA BY LEXICOGRAPHIC ORDER:
##
##   Also called 'alphabetic order'.
##   Heuristic explanation:
##
##    ----------------------------------------------------------------
##   |               'string1 < string2'                              |
##   |  means that if both strings were words in a dictionary, then   |
##   |  'string1' would be found before 'string2' in the dictionary.  |
##    ----------------------------------------------------------------
##
##   More precise explanation by examples:
##
##    ---------------------------------------------------
##   |  RULE 1:     "abcuvw" < "abcx"  is TRUE           |
##   |  because in the first position with a difference  |
##   |  we have "u" on the left and "x" on the right;    |
##   |  "u" precedes "x" in the alphabet, hence the      |
##   |  left string is before the right string.          |
##    ---------------------------------------------------
##   |  RULE 2:     "abc" < "abcxyz"  is TRUE            |
##   |  because the strings agree in all positions of    |
##   |  the shorter string, in which case the shorter    |
##   |  string precedes the longer string.               |
##    ---------------------------------------------------
##   |  RULE 3:     "Abc" < "aBd"  is TRUE               |
##   |              "Abc" < "aBcd" is TRUE               |
##   |  because differences in upper/lower case are      |
##   |  ignored, unless they are the only differences:   |
##   |              "abc" < "aBc"  is TRUE               |
##   |  if          "b" < "B"      is TRUE.              |
##    ---------------------------------------------------
##
## - Examples:
       "a"  < "b"      # TRUE  because "a" precedes "b" in the alphabet
       "a"  <= "b"
       "a"  <= "a"
       "ab" < "c"      # TRUE  because "a" precedes "c" (1st position)
       "aa" < "ab"     # TRUE  because "a" precedes "b" (2nd position)
       "ab" >= "aa"
       "a"  < "aaaaa"
       "u"  < "zzzzzzz"
       "a"  == "A"
       "a"  != "A"
       "a"  == "aa"
       "a"  == "a"
##
## - Vectorized: comparison is element by element:
       c("a","aa","ab") < c("a","az","aba")
       "a"  < c("a","aa","ab")                # "a" is recycled
       c("a","aa","ab") < c("a","b")          # rhs is recycled, with warning
##
## - How do upper and lower case letters compare?  Try this:
       c("a"<"A", "A"<"b", "b"<"B", "B"<"c",     "y"<"Y", "Y"<"z", "z"<"Z")
##   For the instructor, these are all TRUE.
##   For you, this might not be the case.
##   But on other computers/operating systems/R settings
##   the following might all be TRUE:
       c("A"<"Z", "Z"<"a", "a"<"z")
##   Here is where a big mess starts:
##   There exist different string sorting conventions!
##   We won't go into much detail of why and how this happens.
##   Instead here are a few rules to guide you:
##
##    ---------------------------------------------------------
##   |  PRINCIPLES FOR STRING SORTING:                         |
##   |                                                         |
##   |  In the US you should be able to rely on the following: |
##   |  - Lower case letters are sorted alphabetically.        |
##   |  - Upper case letters are sorted alphabetically.        |
##   |  - Digit characters "0"..."9" are sorted numerically.   |
##   |  - Digits are before upper and lower case characters.   |
##   |                                                         |
##   |  You can NOT rely on a particular ordering of           |
##   |  upper-vs-lower case letters and special characters.    |
##   |                                                         |
##   |  If you must rely on reproducibility on other computers |
##   |  and operating systems and in other countries,          |
##   |  do the following in R:                                 |
##   |     Sys.setlocale("LC_COLLATE", "C")                    |
##   |  and tell your partners in R to do the same.            |
##   |  You should then have identical string orderings.       |
##   |  Or you can ask your system what its settings are:      |
##   |     Sys.getlocale("LC_COLLATE")                         |
##   |  If your R partners have the same settings,             |
##   |  you should be getting same string orderings.           |
##    ---------------------------------------------------------
##
##   A reason for not getting too anxious about inconsistent string
##   ordering is that often ordering is just used to visually scan a
##   vector of labels or names, and to this end you want them not in
##   random order but somehow lexicographically sorted so you can look
##   up specific labels and names quickly.
##
##   [Python programmers: You might be in for similar issues.]
##
##   Here is the instructor's ordering of most special characters on
##   the keyboard as well as digit and upper/lower case characters:
       keybd <- c( "'", "-", " ", "!", "\"","#", "$", "%", "&", "(", ")", "*", ",", ".", "/",
                  ":", ";", "?", "@", "[", "]", "^", "_", "`", "{", "|", "}", "~", "+", "<",
                  "=", ">", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "A", "b",
                  "B", "c", "C", "d", "D", "e", "E", "f", "F", "g", "G", "h", "H", "i", "I",
                  "j", "J", "k", "K", "l", "L", "m", "M", "n", "N", "o", "O", "p", "P", "q",
                  "Q", "r", "R", "s", "S", "t", "T", "u", "U", "v", "V", "w", "W", "x", "X",
                  "y", "Y", "z", "Z")
       save.image()      # Save this vector for future sessions.
##   This is based on the following settings (2015/09/15):
       Sys.getlocale("LC_COLLATE")
##     [1] "English_United States.1252"


## * COMPARISON OPERATIONS ON LOGICAL DATA: FALSE < TRUE
        FALSE < TRUE  # TRUE
        T == T        # TRUE
        F >= T        # FALSE
## This is not much used, but needs to be stated for completeness.


## * VECTORIZATION AND RECYCLING OF LOGICAL VALUES:
        c(T,F,T,F)
        rep(c(T,F), 3)
        rep(c(T,F), each=2)
        (0:9) > (9:0)
        (1:10) >= 6                # Recycling
        (1:10) >= c(2,5)           # Think it through!
        StudentGenders == "female" # TRUE for "female"
        letters <= "k"             # Recycling, TRUE for letters up to "k"


## * SUMMARY:
##
##   ------------------------------------------------------------
##  | LIST OF COMPARISON OPERATIONS:                             |
##  |                                                            |
##  |            NUMERIC                      LEXICOGRAPHIC      |
##  |       <    is strictly less than,       strictly before    |
##  |       >    is strictly greater than,    strictly after     |
##  |       <=   is less than or equal to,    before or same as  |
##  |       >=   is greater than or equal to, after or same as   |
##  |       ==   is equal to,                 is same as         |
##  |       !=   is not equal to,             is not same as     |
##   ------------------------------------------------------------


## * IMPORTANT FUNCTIONS RELATED TO COMPARISONS: sort(), unique()
##
##   - 'sort()' sorts numeric and character (and logical) vectors.
##     In the returned vector all adjacent elements will satisfy '<='.
##     The returned vector is of the same length as the input vector.
         sort(StudentHeights)
         sort(Salary)
##     Nice! The names of the elements get sorted in parallel.
##     Also works for sorting character data:
         NamesStat470
         sort(NamesStat470)
##     And here you can learn how your computer sorts keyboard characters:
         sort(keybd)
##     Does it look different from 'keybd'?
##
##   - 'unique()' removes duplicate values (numeric, character, logical, missing).
##     In the returned vector all possible element pairs will satisfy '!='.
##     Note that the returned vector is generally shorter than the input
##     because of the removal of duplications.
##     The elements will be in the order first encountered.
##     Examples:
         unique(rep(rep(0:2, times=100), each=100))
         unique(rep(rep(2:0, times=100), each=100))
         unique(c("l","l","l","e","l","l","h","l","h","m","e","m","a","a","l","h","n"))
         unique(StudentGenders)
##     'unique()' is useful for counting how many distinct elements
##     there are in a vector:
         vec <- c("l","l","l","e","l","l","h","l","h","m","e","m","a","a","l","h","n")
         length(unique(vec))  # 6


## * LOGICAL OPERATIONS: 'Boolean algebra', 'propositional logic'
##
## - Motivation: We find ourselves often in the situation of forming
##   conditions consisting of more than one comparisons, as when we
##   ask for the employees whose age is below 33 and the salary is
##   above 50000 and who are not male.  To form such conditions we
##   need the following operations on logical values:
##
##    ----------------------------------------
##   | LOGICAL OPERATIONS:                    |
##   |                                        |
##   |       |     (or, non-exclusive) binary |
##   |       &     (and)               binary |
##   |       !     (not                unary  |
##   |                                        |
##   | LOGICAL FUNCTION:                      |
##   |       xor(,) (exclusive or)     2 args |
##    ----------------------------------------
##
## - The following are the classical 'truth tables' of
##   'propositional logic': They list all possible
##   combinations of input arguments, and R 'computes'
##   the corresponding outputs.
         T | T
         T | F
         F | T
         F | F
         T & T
         T & F
         F & T
         F & F
         ! T
         ! F
##   IMPORTANT: '|' is non-exclusive. Think of it as
##   'TRUE if AT LEAST ONE argument is true'.
##   Correspondingly, you can think of '&' as
##   'TRUE if ALL arguments are true'.
##   This way of thinking becomes most fruitful when
##   facing more than two arguments:
         F | F | F | T | F
         F | F | F | F | F
         (1 < 2) | (1 > 2) | (pi == 3.14159)
         ("a" > "A") | (-1 > 2) | F
##   Vectorized: operate element by element
         c(T,T,F,F) | c(T,F,T,F)
         c(T,T,F,F) & c(T,F,T,F)
         ! c(T,F)
##   Recycling: As always, think first, then check.
         c(T,F) | T
         c(T,F) | F
         c(T,F) & T
         c(T,F) & F
         c(T,T,F,F) | c(T,F)
##   Looking ahead: The above may seem mere play,
##   but it will allow us do useful things such as
##   illustrated by the following examples:
         Salary                          # see earlier
         Salary >= 50000
         (50000 <= Salary) & (Salary <= 52000)
         (50000 <  Salary) & (Salary <  52000)
##   What does the above clause mean in words?
##   or more examples, let's make up a vector of ages:
         Salary.age <- c(ed=36, cecilia=32, beth=29, john=28,
                         alex=33, matt=27, liz=35, ruth=37)
         save.image()      # Save this vector for future sessions.

         Salary.age
         Salary.age < 33
         (Salary.age < 33) & (Salary > 50000)
##   Again, formulate the above clause in plain English.


## * COLLAPSING LOGICAL OPERATIONS: any(), all()
##
##   These functions take a logical vector and return just one
##   logical value.
##   Examples:
         any(c(T,F,F,F,T))
         all(c(T,F,F,F,T))
         any(StudentHeights >= 80)
         all(StudentHeights >= 55)
##   These functions ask
##       'all()':   'are all TRUE?'
##       'any()':   'are there any TRUE?'
##
##   There is no function to ask  'are all FALSE?'.
##   However, you can use what we know to ask this question:
         x <- c(T,F,F,F,T)
         all(!x)
##
##   We can use 'all()' to check whether your keyboard characters
##   are ordered the same way as the instructors:
         all(keybd == sort(keybd))
##   For the instructor, this is TRUE by construction of 'keybd',
##   but if this is FALSE for you, you know where to look:
         Sys.getlocale("LC_COLLATE")
##   which might return "C" or something else.


## * COUNTS AND PROPORTIONS:
##
## Also called 'absolute frequencies' and 'relative frequencies'.
## Coercion of logical to numeric comes in handy as we will see.
##
## - Examples:
##
##   . How many male employees are there in the 'Salary' data?
         sum(Salary.gender == "male")
##
##   . What fraction are male?
         mean(Salary.gender == "male")
##
##   . How many males make 50000 or over?
         sum(Salary >= 50000 & Salary.gender == "male")

##   . Among males, what fraction makes 50000 or over?
         sum(Salary >= 50000 & Salary.gender == "male") / sum(Salary.gender == "male")
##
## - Summary:
##   . Counting can be done by applying 'sum()' to logical data.
##   . Proportions can be obtained by applying 'mean()' to logical data.
##   . Conditional proportions can be obtained as fractions of appropriate counts.

## - More examples:
##
##   . How many students are between 60 and 67 inches (inclusive)?
         sum(60 <= StudentHeights & StudentHeights <= 67)
##
##   . Among female students, how many are between 60 and 67 inches (inclusive)?
         sum(60 <= StudentHeights & StudentHeights <= 67 & StudentGenders == "female")
##
##   . What fraction are they among all students?
         mean(60 <= StudentHeights & StudentHeights <= 67 & StudentGenders == "female")
##
##   . What fraction are they among female students?
         sum(60 <= StudentHeights & StudentHeights <= 67 & StudentGenders == "female") /
         sum(StudentGenders == "female")


##================================================================


## * COERCION ONCE AGAIN:
##
## - We saw earlier that the values TRUE and FALSE can get coerced ...
##   . to the numbers 1 and 0 if the target type is 'numeric', as in:
         TRUE + 1
         c(T,F) + 0
         FALSE * pi
##   . to the strings "TRUE" and "FALSE" if the target type is 'character', as in:
         paste("TRUE and", FALSE)
         substring(FALSE, 1, 1)
         substring(F, 3, 5)
         sub(F, T, F)
         paste("YOU WILL", sub("T", "", TRUE), "THE DAY YOU DECIDED TO TAKE STAT 470!")
## - Numeric values can be coerced to type 'logical':
         2 | F
         pi | F
         (-0.0001) | F
         0 | F
         0.0 | F
         2 & T
         0 & T
##   ==> The numeric value 0 is coerced to FALSE;
##       all non-zero values are coerced to TRUE.
##   [Please, do not use this type of coercion in your programming!
##    It is bad programming style because it creates highly
##    unreadable code.  However, you need to know about this
##    in case you have to read other people's code.
##    ]
## - Character data cannot be coerced to type 'logical'.
##   This bombs:
         "a" | T
         T | "a"
##
## - Use of coercion 'logical' --> 'numeric':
##           FORMING DUMMY VARIABLES!
##   . What is a dummy variable?  ...
##   . In which kind of statistical analysis
##     are dummy variables used?  ...
##   Example:
         StudentGenders.dummy <- 0+(StudentGenders=="female")
         StudentGenders.dummy
##   In this vector, females are coded as +1, males as 0.
##
## - Coercion functions:
##   Writing '0+(StudentGenders=="female")' for the sole purpose
##   of achieving coercion is silly programming style.
##   Use instead explicit coercion functions:
         as.numeric(c(T,F))
         as.character(c(T,F))
         as.character(0:5)
         as.logical((-2):(+2))
##   Surprisingly, coercion of character to numeric works
##   IF the string represents a number:
         as.numeric("1.2")
         as.numeric("1E-10")
##   even though the following does not work:
         1 + "1.2"
##
##    --------------------------------
##   |  COERCION FUNCTIONS:           |
##   |                                |
##   |  as.logical((-2):(+2))         |
##   |  as.numeric(c(T,F))            |
##   |  as.character(c(T,F))          |
##   |  as.character(0:3)             |
##   |  as.numeric(c("1.2","1E-10"))  |
##    --------------------------------


##================================================================


## MISSING VALUES AGAIN


## - Recall that for numeric data we got to know these 'missing values':
     NaN;  Inf;  -Inf
## Now, these should really called 'special values' because
## their purpose is to appear as results of ill-defined math:
     0/0;  1/0;  -1/0
     (0/0)^3;  (1/0)^3;  (-1/0)^3
##
## - If in a dataset you have missing values that are missing
## due to failure to observe a value, you should use the symbol 'NA':
     NA
     c(ed=53000, ruth=55000, tim=NA)
## ==> We don't know Tim's salary.
##
## - The above distinction matters when it comes to coercion!
## See what happens in these examples:
     c(0,   1, 2, NaN, Inf, -Inf, NA)
     c("a", 1, 2, NaN, Inf, -Inf, NA)
## Here is a rule for this behavior:
##
##    -------------------------------------------------
##   |  COERCION OF MISSING VALUES TO TYPE CHARACTER:  |
##   |                                                 |
##   |  NaN, Inf, -Inf  -->  "NaN, "Inf", "-Inf"       |
##   |                                                 |
##   |  NA              -->  NA                        |
##    -------------------------------------------------
##
## - Think of 'NA' as a universal missing value that is a chameleon:
## It can be of any atomic type, depending on where it appears.
     c(NA,T,F)       # NA is 'logical'.
     c(1,NA,3)       # NA is 'numeric'.
     c("a","b",NA)   # NA is 'character'.
##
## - Here is a useful function that operates on vectors of any
## atomic type and asks each element whether it is missing:
     is.na(c(NA,T,F))
     is.na(c(1,NA,3))
     is.na(c("a","b",NA))
## There is one potential surprise in the behavior of this function
## when it comes to the numeric special values NaN, Inf and -Inf:
     is.na(NaN)
     is.na(Inf)
     is.na(-Inf)
## Did you expect this?  TRY TO REMEMBER!
## Else this might cause errors in your programs
## that will be difficult to debug.
##
## - If you ask 'NA' of what type it is, you'll get:
     typeof(NA)
## Does this make sense?  Yes, because type 'logical'
## can be coerced to anything else, 'numeric' and 'character',
## but not vice versa:
     as.logical("a")   # NA
     as.numeric("a")   # NA and a warning
## This is the reason why 'NA' as type 'logical' becomes a 'type chameleon'.
##
##
## - Important rules:
##
##    --------------------------------------------------
##   |  COMPARISON OPERATIONS WITH NA:                  |
##   |                                                  |
##   |  - Comparison operations involving NA and NaN    |
##   |    always return 'NA'.                           |
##   |                                                  |
##   |  - 'NaN' coerced to type 'logical' is 'NA'.      |
##    --------------------------------------------------
##
##   This is plausible because 'NA' is of type 'logical',
##   which is what comparisons should produce:
       NaN < 1                      # What type do you expect?
       NaN == pi                    # Same.
       c(NaN, 1, 2) == c(0, 1, NaN) # Vectorizing works.
       c(NaN, 1, 2) == 1            # Recycing works
       c(NaN, 1, 2) == NA           # What
       NA == NA                     # Did you think this is TRUE?
       NA == 1
       NA == "a"
##
##    --------------------------------
##   |  LOGICAL OPERATIONS WITH NA:   |
##   |                                |
##   |  NA & FALSE    -->  FALSE      |     !!!!
##   |  NA & TRUE     -->  NA         |
##   |                                |
##   |  NA | TRUE     -->  TRUE       |     !!!!
##   |  NA | FALSE    -->  NA         |
##   |                                |
##   |  ! NA          -->  NA         |
##   |                                |
##   |  all(NA,FALSE,...) --> FALSE   |     !!!!
##   |  any(NA,TRUE,...)  --> TRUE    |     !!!!
##    --------------------------------
##
##   The cases marked !!!! make sense:
##   - In an 'and' expression ('&'), if there is a FALSE,
##     the result is FALSE, never mind the NA.
##   - In an or' expression ('|'), if there is a TRUE,
##     the result is TRUE, never mind the NA.
##   - In an 'all()' expression, if there is a single FALSE,
##     the result is FALSE, never mind the NAs.
##   - In an 'any()' expression, if there is a single TRUE,
##     the result is TRUE, never mind the NAs.
##
##   Try:
       NA & F & T
       NA & T & T
       NA | T | F
       NA | F | F
       all(NA, F, T)
       all(NA, T, T)
       any(NA,T,F)
       any(NA,F,F)
##
##   Memorize:
##   - A single TRUE  makes '|' and 'any()' expressions TRUE.
##   - A single FALSE makes '&' and 'all()' expressions FALSE.


##================================================================


## INDEXING / SUBSETTING VECTORS


## In what follows we will put all three data types to work for the
## task of pulling data out of a larger data vector.  Subsetting
## datasets is one of the most important tasks in any analysis of
## complex data.  While pulling data out of a vector is still a
## limited task, the techniques we learn will transfer immediately to
## data matrices, data arrays and data frames (the bread and butter
## data structures for data tables).
##
## R has one of the richest and most expressive sets of mechanisms for
## reaching into data structures (for now just vectors).  If you know
## the database (DB) language SQL, you may translate back and forth
## between how a 'query' is done in SQL and how it is done in R.
## [The DB company Oracle is apparently offering R as an alternative
## language for its databases.]
##
## As we learn how to select from a vector, we also learn how
## to modify selected parts of a vector.  R has a simple mechanism
## for turning selections over to modifications thereof.


## *SYNTAX: vector followed by brackets,  x[...]
##          (NOT parens, NOT curly braces!)


## * -------- FOUR WAYS TO INDEX VECTORS --------


## - SELECTION WITH POSITIVE INTEGERS:
##
       Salary[1]                        # First element
       Salary[1:5]                      # Elements 1 through 5
       Salary[c(7,3,5)]                 # Elements 7, 3, 5 in this order
       Salary[length(Salary)]           # ??? element
       Salary[length(Salary)-(1:0)]     # ??? elements
       Salary[length(Salary)-(0:1)]     # ??? elements
       Salary[c(1,2,1,2,1,2,1,2,1,2,1)] # Silly, but can be useful.
       Salary[length(Salary):1]         # Reverse order; simpler: rev()
##
##    ----------------------------------------------------
##   |  Elements of a vector can be SELECTED by position  |
##   |  using positive integer vectors in any order and   |
##   |  with any repetition.                              |
##    ----------------------------------------------------


## - DESELECTION WITH NEGATIVE INTEGERS:
##
       Salary[-1]                       # All but first
       Salary[-(1:5)]                   # All but the first five
       Salary[-c(7,3,5)]                # All but elements 7, 3, 5
       Salary[-length(Salary)]          # All but ???
       Salary[-(length(Salary)-(1:0))]  # All but ???
       Salary[-c(1,2,1,2)]              # Same as:  Salary[-c(1,2)]
##
##    ----------------------------------------------------------------
##   |  Elements of a vector can be DESELECTED by position            |
##   |  using negative integers (order and repetitions are ignored).  |
##    ----------------------------------------------------------------
##
       Salary[-c(2,2,1,1,1,1)]
       Salary[-c(1,2)]              # Same: repeats and order are ignored.
##
##    ---------------------------------------------------------------------
##   |  IMPORTANT: In brackets do not mix positive and negative integers!  |
##    ---------------------------------------------------------------------
##
       Salary[c(-1,2,3)]      # Error


## - SELECTION WITH LOGICAL VALUES:
##
       Salary[C(T,F,T,F,T,F,T,F)]       # Select evely other element of 'Salary'.
       Salary[c(T,T,T,T,F,F,F,F)]       # Select the first half of 'Salary'.
##
##    ------------------------------------------------
##   |  Elements from a vector can be selected        |
##   |  using logical vectors of the same length:     |
##   |  the positions with TRUE will be selected;     |
##   |  the positions with FALSE will be deselected.  |
##   |  Shorter logical vectors will be recycled.     |
##    ------------------------------------------------
##
       Salary[T]                        # Recycling: select all
       Salary[F]                        #    "     : deselect all (empty)
       Salary[c(T,F)]                   #    "     : every other element
##
##   Now here is the killer app for logical selection:
       Salary[Salary >= 50000]                      # <<<<<<<<<<<<<<
       Salary[50000 <= Salary & Salary <= 52000]    # <<<<<<<<<<<<<<
       Salary[Salary.age >= 32]                     # <<<<<<<<<<<<<<
       StudentHeights[StudentHeights <= 65]         # <<<<<<<<<<<<<<
       StudentHeights[StudentGenders == "female"]   # <<<<<<<<<<<<<<
##   Here we learn how to select from a vector based on
##   its own values or those of a parallel vector.
##
##   Here is how you ask for the names with certain properties:
       names(Salary)[Salary >= 50000]
##   Recall that 'names()' extracts the character vector of names
##   from a vector with named elements.
##
##   IMPORTANT FUNCTION: 'which()'
##   This function returns a vector of positive integers that
##   show the positions of the value TRUE in a logical vector.
       which(c(T,F,T))    # [1] 1 3
       which(c(F,F,F,F))  # integer(0)  (empty enteger vector)
       which(c(T,T,T,T))  # [1] 1 2 3 4
##   The following returns the positions of "male" in 'Salary.gender':
       which(Salary.gender == "male")
##   The reason for mentioning 'which()' here is that it makes
##   selection with logical values and positive integer values
##   equivalent:
       Salary[Salary.gender == "male"]          # Logical selection
       Salary[which(Salary.gender == "male")]   # Positive integer selection
##   Also note that the following do the same: Counting males
       sum(Salary.gender == "male")
       length(which(Salary.gender == "male"))


## - SELECTION WITH NAMES:
##
##   This works for vectors with named elements only.
##   When it works, however, it is very powerful:
       Salary["ed"]
       Salary[c("ed","cecilia")]
       Salary[c("cecilia","ruth","ed")]    # Any order is ok.
       Salary[c("ruth","ruth","ed","ed")]  # Repeats are ok.
       Salary["tim"]                       # No such name ==> NA
       Salary[c("edward")]                 # 'Salary' doesn't know "ed" is "edward"
##
##    ---------------------------------------------------------
##   |  If the elements of a vector have names,                |
##   |  elements can be selected with character vectors        |
##   |  of any length with names in any order and repetition.  |
##   |  Non-names create NA values.                            |
##    ---------------------------------------------------------
##
##    --------------------------------------------------------------
##   |  IMPORTANT: Confusion occurs when the names are strings      |
##   |             of digits that look like numbers.  In this       |
##   |             case make sure you index with type 'character'.  |
##    --------------------------------------------------------------
##
##   Example:
       x <- c("2"=2.3, "3"=3.1, "1"=4.8)
       sel <- 3        # You really meant to say "3".
       x[sel]          # That's not x["3"]
       x["3"]
##   [The instructor has run into this problem more than once.]

##   [For those with computational background: Looking up by name
##    may seem expensive.  However, computer science has invented
##    efficient tools for this task, called 'hash tables' or
##    'associative arrays'.  So you may use this mechanism even
##    for quite large data.]


## - AN APPLICATION: Marking subsets of data in a scatterplot
       Salary.gender <- c("ed"  ="male",   "cecilia"="female", "beth"="female",
                          "john"="male",   "alex"   ="male",   "matt"="male",
                          "liz" ="female", "ruth"   ="female" )
       save.image()      # Save this vector for future sessions.
       plot(Salary.age, Salary)
       sel <- (Salary.gender=="male")
       points(Salary.age[sel], Salary[sel], pch=16)
##   [Look up  'help(points)'  for both 'points()' and 'pch',
##   While 'plot()' creates a new plot, 'points()' adds to an
##   existing plot previously generated with 'plot()', just
##   as 'lines()' also adds to an existing plot.
##   'pch' stands for 'plotting character' and can be
##   used in both 'plot()' and 'points()'.
##   The 'pch' argument is an integer, and there is no
##   need to memorize the meanings of the integer codes.
##   Instead, memorize the following line of code to
##   remind you of the effect of 'pch' codes:
       plot(1:25, pch=1:25)
##   As you can see, 'pch' can also be a vector argument,
##   where each position of 'pch' is matched to the
##   positions in the coordinates.
##   Also, if you give only one coordinate argument
##   to 'plot()', it will be for the vertical coordinate;
##   the horizontal coordinate defaults to 1:length(vertical).
##   ]


## - EMPTY SELECTIONS:
##
       Salary[Salary < 40000]
##   What happened?
##   Whatever it is that was returned, let's assign it and examine it
       Salary.less.than.40K <- Salary[Salary < 40000]
       length(Salary.less.than.40K)
       typeof(Salary.less.than.40K)
##   So this is vector of length zero, i.e., an empty vector.
##   Correspondingly, we get empty character vectors here:
       names(Salary)[Salary < 40000]
       Salary.gender[Salary < 40000]
##   Earlier we had generated empty vectors with 'c()',
##   which actually has a reserved name:
       c()
       NULL
       typeof(NULL)
       typeof(c())
       length(NULL)
##   This is an empty vector of type "NULL".
##   Why would the R designers create this 'type'?
##   Don't know.  Might just be bad design.


## * MISSING VALUE SELECTIONS:
##
       x <- 1:5
##   Experiments:
       x[c(1,NA,5:2,NA,NA)]
##     ==> 'NA' is like a positive integer, hence produces one NA each time
       x[-c(1,2,NA)]
##     ==> Error (NA doesn't know what to deselect)
       x[NA]
##     ==> NA is logical, hence is recycled to full length
       x[NaN]
       x[Inf]
       x[-Inf]
       x[c(1,NaN,2)]
       x[c(1,Inf,2)]
       x[c(1,-Inf,2)]
##     ==> Numeric missing values NaN, Inf, -Inf produce one NA each.


## * MODIFICATION OF SUBVECTORS:
## This is a powerful feature of the R language!
## Example: Let's say 'liz' is getting a raise of $1,500/yr.
##          Everybody else's salary remains the same.
## This can be implemented as follows:
       Salary                                 # Current salaries
       Salary["liz"] <- Salary["liz"] + 1500  # (1)
       Salary                                 # New salaries
## Let's be nice to 'ed' and 'ruth' as well and give them
## raises of $1,000 and $1,200, respectively.  They are
## in positions 1 and 8:
       Salary[c(1,8)] <- Salary[c(1,8)] + c(1000, 1200) # (2)
       Salary                                 # New salaries
## Logical selection works also:  The following raises
## the salaries of those below $50,000 up to $50,000:
       Salary[Salary < 50000] <- 50000        # (3)
       Salary                                 # New salaries
##
##
## If you give 'alex' a 10% raise, it looks like this:
       Salary["alex"] <- Salary["alex"] ???  # (4) Fill in ???

## WARNING: The above lines of code are bad programming.
## REASON:  Self-modification is dangerous.
##          What if you mistakenly execute some of these lines twice?
## [Quiz question: Which of the above modification expressions
##                 doesn't change anything if executed a second time?]
## RECOMMENDATION: Make a copy of 'Salary', say, 'Salary.new',
##                 and make 'Salary.new' a modification of 'Salary'.
## Let's recreate 'Salary' from earlier and do it right:
       Salary <- c(ed=53000, cecilia=53000, beth=49000,
                   john=48000, alex=50000, matt=48000,
                   liz=52000, ruth=55000)
       save.image()              # Save for future sessions
       Salary.new <- Salary
       Salary.new["liz"]   <- Salary["liz"] + 1500           # (1)
       Salary.new[c(1,8)]  <- Salary[c(1,8)] + c(1000, 1200) # (2)
       Salary.new[Salary < 50000] <- 50000                   # (3)
       Salary.new["alex"] <- Salary["alex"] * (1+10/100)     # (4)
       Salary.new
       Salary
## Be sure you understand that executing each of these lines twice
## by mistake does not corrupt 'Salary.new'!


## * NAMING OF VECTORS:
##
## - So far we have introduced named vectors at the collecting stage
##   with 'c()':
        x <- c(a=10, b=20, c=30)
        x
##   By the way, we can also quote the element names, which is
##   better programming style and allows us to use funny characters
##   in the names:
        x <- c("a"=10, "b"=20, "c"=30)
        x
##   When printing 'x', the names are shown without quotes.
##
## - New Problem:
##   How can we give elements names if the names are stored in another vector?
##   We are not going to write out 1,000,000 names in a 'c()' expression!
##
##   Simple example
        x <- c(10,20,30)                  # Values
        x.names <- c("a","b","c")         # Names of values
##   Here is how we can make 'x.names' the names of the elements of 'x':
        names(x) <- x.names
        x
##   And ask for the names:
        names(x)
##   It all works.
##
## - Some illustrative games with names:
        my.letters <- letters
        names(my.letters) <- LETTERS
        my.letters
##   Now we can look up the lower case version of any upper case letter:
        my.letters["A"]
##   Less trivial is this:
        names(my.letters) <- rev(letters)   # 'rev()' reverses the order.
        my.letters
##   Now we can look up what the "mirror image letter" is.
##   For example, "c" is third from the beginning;
##   what is the third from the end?
        my.letters["c"]
        my.letters["x"]
        my.letters["k"]
        my.letters["p"]
##
## - 'table()': The most important function that creates vectors with names
##   The function counts how often each element occurs in a vector.
##   It returns a vector with names, which are the unique distinct elements
##   in the argument vector:
        table(c("a","a","b","c","a","c"))
##         a b c     << names (strings without quotes)
##         3 1 2     << counts, frequencies
        tab <- table(c("a","a","b","c","a","c"))
        tab["a"]
        tab[c("a","c")]
##   'table()' can be applied to vactors of any type:
        table(c(1,2,1,2,4,1,3))
##        1 2 3 4    << names (strings without quotes
##        3 2 1 1    << counts, frequencies
        table(c(T,T,T,F,T,T,F,F))
##        FALSE  TRUE   << names (strings without quotes)
##            3     5   << counts, frequencies
##   The length of a table is the number of unique elemenets:
        vec <- c("a","a","b","c","a","c")
        tab <- table(vec)
        length(tab)          # 3
        length(unique(vec))  # 3, same


## * NAMED ELEMENTS AS A WAY TO TRANSLATE STRINGS:
##
## Named elements can be used for vectors of type 'character' as well.
## We show how to use this possibility for re-coding of character data,
## which is a frequent task in data analysis.
## In Homework2.R we solve such a problem with string substitutions.
## Here is a simpler way (NOT to be used in the homework):
## If the task is to replace "female" with "Y" and "male" with "N",
## define a translation vector using strings as values with names:
        trans <- c("female"="Y", "male"="N")
## If you look up
        trans["female"]
## you get "Y", and similar for
        trans["male"]
## Hence the following translates/recodes all elements of 'Salary.gender':
        trans[Salary.gender]
##
## This is a very useful R idiom.  Here is another application:
## -- TRANSLATING CHARACTER DATA TO COLORS IN A SCATTERPLOT --
## Rather than defining a translation vector beforehand,
## we pack it into the 'plot()' expression directly:
        plot(Salary.age, Salary, pch=16, cex=2,
             col=c("female"="red","male"="blue")[Salary.gender])
## Here, "female" is mapped to "red" and "male" to "blue", which
## creates a valid color vector for 'plot()'.
## [If your categorical variable (character vector) has more than
## two different values, you might want to define a translation
## vector outside the 'plot()' expression.]


##================================================================


## DATA FRAMES -- THE BREAD AND BUTTER DATA STRUCTURE FOR COMMON DATA


## * OVERVIEW:
##
## 'Dataframes' are the most frequently used type of data structure
## for storing tabular data.  They are tailor-made for statistics:
## Rows by columns, where the columns are vectors of equal length.
## - The rows characterize 'cases', 'subjects', 'objects', 'records' (= synonyms).
## - The columns represent 'variables', 'attributes' (=synonyms).


## [For those who know R: We will introduce 'matrices', 'arrays' and
## 'lists' later.  Right now the plan is to learn how to store and use
## data tables as needed in a majority of situations.]


## * EXAMPLE 1: My classes and their attributes:
##
       my.classes <- data.frame("Classes"=c("Stat470","Bio280","French103"),
                                "DoW"=c("MonWed", "TueThu", "Thu"), # Day of Week
                                "ToD"=c(12, 15, 18),                # Time of Day in European time
                                "Req"=c(F,T,T),                     # Required for major?
                                stringsAsFactors=F)                 # See explanations below.
       save.image()      # Save for future R sessions.
##
## The function 'data.frame()' takes any number of columns of equal length
## with arbitrary names given to them (here: "Classes", "DoW", "ToD", "Req").
## It forms a tabular data structure called 'dataframe' from them.
## This is how the dataframe is printed:
       my.classes
##     ----------------------------
##         Classes    DoW ToD   Req    << column names (no quotes)
##     1   Stat470 MonWed  12 FALSE
##     2    Bio280 TueThu  15  TRUE
##     3 French103    Thu  18  TRUE
##     ----------------------------
## Note that the character data in the columns 'Classes' and 'DoW'
## are shown without quotes.  The rows are given numbers as names.


## * BASIC FUNCTIONS FOR DATAFRAMES:
##
## Because dataframes have 'two dimensions', we need functions
## that do similar things as 'length()' and 'names()' for vectors:
## - Generalizing 'length()':
       nrow(my.classes)      # 3 rows
       ncol(my.classes)      # 4 columns
       dim(my.classes)       # 3 rows, 4 columns, really: c(nrow(...),ncol(...))
## - Generalizing 'names()':
       colnames(my.classes)  # [1] "Classes" "DoW"     "ToD"     "Req"
       rownames(my.classes)  # [1] "1" "2" "3"  (default row names)
## - The functions 'colnames()' and 'rownames()' can be used to set them:
       rownames(my.classes) <- c("Statistics", "Biology", "Languages")
       my.classes


## * INDEXING/SUBSETTING: This is now done in both index dimensions.
##
##   - Positive integer selection:
       my.classes[1,2]             # Selects one element --> atomic value
       my.classes[,1]              # Selects one column  --> vector, length=3
       my.classes[2,]              # Selects one row     --> dataframe 1x4
       my.classes[,c(1,3)]         # Selects two columns --> dataframe 3x2
       my.classes[c(1,2),]         # Selects two rows    --> dataframe 2x4
##   - Negative integers deselection:
       my.classes[,-c(2,3)]        # Deselect columns 2,3 --> dataframe 3x2
       my.classes[-c(1,3),]        # Deselect rows 1,3    --> dataframe 1x4
       my.classes[-c(1,3),-c(2,3)] # Deselect rows 1,3, cols 2,3 --> dataframe 1x2
##   - Logical selection:
       sel <- my.classes[,3] <= 15 # Select classes that start 15 o'clock or earlier
       my.classes[sel,]            # All variables --> dataframe 2x4
       my.classes[my.classes[,3] <= 15,] # Same!
##   - Selection by row and column name:
       my.classes[,"ToD"]          # Selects columnn 'ToD'
       my.classes[,c("Classes","ToD","Classes")] # In any order and repetition
       my.classes["Biology",]      # Default row names "1", "2", "3"
##   - Selection types can be different between rows and columns, but not within:
       my.classes[c(1,3),"ToD"]
       my.classes["Biology",-1]


## * ALTERNATIVE ACCESS TO COLUMNS IN A DATAFRAME:
##
##   For reasons to be explained later, the following is another way
##   to select columns from a dataframe:
       my.classes$Classes
       my.classes$DoW  ;   my.classes[,"DoW"]   # same
       my.classes$ToD
       my.classes$Req
##   Here you get at elements with one bracket position:
##   because this is now a plain vector:
       my.classes$DoW[1]
       my.classes$DoW[-1]
       my.classes$DoW[my.classes$ToD <= 15]


## * EXAMPLE 2: Collect the vectors 'Salary...' in a dataframe.
       Salary.df <- data.frame("Salary"=Salary, "Age"=Salary.age, "Gender"=Salary.gender,
                               stringsAsFactors=F)  # Preserve strings, don't make them a 'factor'.
       Salary.df                     # Look at the whole table (strings shown w/o quotes)
       save.image()
##   The dataframe inherits its rownames from the first named vector, here: 'Salary'.
       dim(Salary.df)              # Its dimensions
       rownames(Salary.df)
       colnames(Salary.df)
       Salary.df["ed","Gender"]    # Selection: one element from the table
       Salary.df["ed",3]           # Same, string shown with quotes
       Salary.df["ed",-c(1,2)]     # Same
       Salary.df[,"Age"]           # One column
       Salary.df["ed",]            # One row
##   Access to columns with '$':
       Salary.df$Salary            # Note again: nameless


## * NOTE: The function 'data.frame()' can combine not only vectors
##         into a dataframe but a mix of vectors and dataframes as well,
##         if 'length()' of the vectors and 'nrow()' of the dataframes
##         is the same.
##   Example:
       data.frame(1:3,
                  data.frame(11:13,21:23),
                  data.frame(c("a","b","c"), c(T,F,T)) )
##   Since gave no names to the columns, some silly column names were made up.
##   Here is the same nicer:
       data.frame("a"=1:3,
                  data.frame("b"=11:13,
                             "c"=21:23),
                  data.frame("d"=c("a","b","c"),
                             "e"=c(T,F,T))
                  )


## * IMPORTANT FOR UNDERSTANDING DATAFRAMES:
##
##   - Vectors can contain only one atomic data type: either logical
##     or numeric or character, but not mixed.
##     Accordingly, each column of a dataframe can contain only one
##     atomic data type.  However, different columns can have
##     different atomic types.
##
##   - Rows are different: They are not vectors because their elements
##     are allowed to be of different types.
##     If you select a single row, it's still a dataframe, though with nrow=1.
          x <- Salary.df["ed",]
          dim(x)
          is.vector(x)
          is.data.frame(x)


## * READING DATAFRAMES FROM FILES:
##
## - So far we have generated 'data' with 'c()' expressions in the code.
##   This is of course not how datasets, in particular large ones, are
##   entered into R.  There must exist ways to import data from the
##   outside, such as files that are given to us on USB sticks or
##   sent in email attachments or to which we are pointed on the internet
##   or which we copy/pasted from a web page or pdf file into a text file.
##
## - Datasets in files must have a tabular form of some kind in order
##   to be read into a dataframe.  Below are two common formats, both
##   really text files, but differing in how the columns are separated.
##
## - The names of files containing datasets are passed to R's input/output
##   functions with strings that contain the "path" to the file if it
##   is on your computer, or the URL if the file is somewhere on the
##   internet.  If the file is on your computer, a simple way to go
##   about it is to place it in R's working directory, which you can
##   find by asking R as follows:
       getwd()
##   In this case you point to it using the string containing the file name:
       "some-dataset.txt"
##   If the file is on the internet, it will require a complete URL:
       "http://stat.wharton.upenn.edu/~buja/STAT-470-503/some-dataset.txt"

##
##
## - EXAMPLE 1: Go to the external class website at
##                http://stat.wharton.upenn.edu/~buja/STAT-470-503/
##              and download the file 'some-dataset.txt' to the folder/directory
##              shown by 'getwd()'.  To this end right-click on the anchor
##              to 'Some Dataset' and select 'Save Link As...' from the menu;
##              then navigate to the folder shown by 'getwd()' and 'Save'.
##              The folder should now contain a file called 'some-dataset.txt'.
##              You can read it into a dataframe as follows:
       some.dat <- read.table("some-dataset.txt", as.is=T)
       some.dat <- read.table("http://stat.wharton.upenn.edu/~buja/STAT-470-503/some-dataset.txt")
       some.dat         #   Hurray, it's the salary data!
##   Use the argument 'as.is=T' to avoid turning character columns
##   into factors.
##   The function 'read.table()' is very general with many arguments
##   to suit many conventions of storing tabular data in text files.
##   By default the function assumes the columns are separated by
##   'white space', i.e., spaces and tabs.
##   In the next example we encounter another convention:
##
##
## - EXAMPLE 2: Often a dataset originated as an Excel spreadsheet.
##              To import it in R, do the following:
##              Save it (or a specific sheet of it if there are more than one)
##              as a CSV file ("comma-separated values") with extension ".csv".
##              It is human-readable, so you can open it with 'Notepad':
##              Right-click > Open with > Notepad.
##              (Simple clicking will open it in Excel.)
##              Read the CSV file with the function 'read.csv()' as follows:
##
       realEst <- read.csv("http://stat.wharton.upenn.edu/~buja/STAT-470-503/real-estate-data.csv",
                           as.is=T)    # prevent again turning character data into factors!!

##   Usual checking of basics:
       dim(realEst)
       colnames(realEst)
       rownames(realEst)
##   You can get a better overview of any data structure with 'str()':
       str(realEst)
##   but it doesn't tell you whether there are rownames.
##   It first states that this is a 'data.frame', that nrow=225, ncol=21, and
##   it shows the column names, the column types, and the first 10 values of each column.
##
##   We make the rownames more informative by pasting row numbers and the column "Location":
       rownames(realEst) <- paste(1:nrow(realEst), realEst[,"Location"])
       rownames(realEst)
##
##
## - QUICK SUMMARY OF ALMOST ANY DATA STRUCTURE:
       summary(realEst)
       summary(my.classes)
##   It is informative for numeric and logical columns, but useless for character columns.
##   It also works for vectors:
       summary(1:100)           # Informative
       summary(my.classes$Req)  #    "
       summary(letters)         # Useless
##   For categorical variables (character and logical columns) you want 'table()':
       table(realEst[,"Location"])


## - IF YOU HAVE INPUT PROBLEMS:
##   You find solutions to many input problems at this URL:
##       https://cran.r-project.org/doc/manuals/R-data.html#Variations-on-read_002etable
##   This is on the official R website, called 'CRAN':
##       'CRAN' == Comprehensive R Archive Network
##   Problems can arise from any of the folowing sources:
##   . encoding in different character sets,
##   . inconsistent header lines,
##   . separator characters (e.g., tab but not space as separator),
##   . quoting (the appearane of " and/or ' in the file),
##   . missing value coding ('.' or '' or 'NA' or '99' or ...),
##   . unfilled lines,
##   . white space in character fields,
##   . blank lines,
##   . mixed atomic types in columns,
##   . comments ('#' means to ignore the rest of the line),
##   . escape sequences: backslashes '\' or '\\' for special characters
##   If your file has a so-called 'fixed-width field' format (i.e., values are
##   lined up by position, not necessarily separated by white space or commas),
##   use the function 'read.fwf()'.


##================================================================


## SIMPLIFYING WORK WITH DATAFRAMES: NAMESPACES AND THE FUNCTION 'with()'


## * BRACKET MAYHEM:
##
##   While indexing/subsetting with brackets is extremely powerful and expressive
##   as far as programming languages are concerned, it can be arduous.
##   To see what we mean, look at this example:
       realEst[realEst[,"Location"]=="SUBNEW" & realEst[,"Firm"]=="LEGAL", "Renttotal"]
##   How easy to read and write is this?
##   To lessen the burden just a little bit, it would be better programming style
##   to separate the construction of the logical vector and the actual selection
##   of rows from 'realEst':
       sel <- realEst[,"Location"]=="SUBNEW" & realEst[,"Firm"]=="LEGAL"
       realEst[sel, "Renttotal"]
##   Still, not easy to read, much less write.
##   Before we describe partial relief from notational mayhem,
##   we need to understand the notion of 'symbol' or 'name' better:


## * PRELIMINARIES ABOUT SYMBOLS/NAMES:
##
## - Symbols/names (= synonyms) for data structures are collected in a 'namespace',
##   which you can think of as a telephone directory where you look up names and find
##   assigned data structures (instead of phone numbers).
##   You can print all symbols/names that you have assigned using the functions
##   'ls()' and 'objects()' (they do the same):
       ls()
       objects()
##   They return the names in a vector of strings, and you can assign the vector
##   to yet another symbol:
       my.symbols <- ls()
       my.symbols
##   You need to be clear that SYMBOLS/NAMES ARE NOT STRINGS, but in order to hand them to us
##   in a data structure, R maps the symbols/names to strings and returns them in a vector.
##
## - Calls to the functions 'ls()' and 'objects()' return only the symbols that YOU defined.
##   R comes of course with a large number of already-defined symbols, such as
       pi;  letters;  LETTERS
##   for data structures, and
       c
       seq
       plot
##   for functions.  These are found in other 'namespaces'.  The list of namespaces
##   can be obtained as a string vector with
       search()
##   Among them will be
       ".GlobalEnv";  "package:graphics";  "package:utils";  "package:base"
##    and a few others.
##
## - To see what is in these namespaces, call 'ls()' or 'objects()' with the namespace as
##   string argument:
       ls(".GlobalEnv")
##   This is the same as 'ls()' without argument: The namespace '.GlobalEnv' contains
##   the symbols that you assigned.  Next:
       ls("package:base")
##   Ooops, that's over 1,200 (mostly) functions and (some) data items!
##   It contains basics such as 'c', 'seq', 'rep, ...
##   Most STATISTICAL functions such as 'mean', 'sd' will be in the following namespace:
       ls("package:stats")
##   If you add up all namespaces, you'd find that about 2,400 symbols are predefined.
##
## - When you type any symbol into the R console, R will look through all the namespaces
##   in the order shown by
       search()
##   till it finds the symbol.  If different namespaces have the same symbol, R will pick
##   the first one it finds going down the list and ignore the same symbols later in the list.
##   When you assign
       pi <- 10
##   there will be a symbol 'pi' with a numeric value assigned in ".GlobalEnv",
##   and another symbol 'pi' in "package:base".  The latter will be 'shadowed' by the former.
##   If you type
       pi
##   your 'pi' will be found first.  If you remove your assignment with
       rm(pi)
##   then the symbol 'pi' in "package:base" becomes visible again:
       pi
##
## - If you define a symbol 'mean' with
       mean <- mean(0:10)
##   it does no damage because if you say next time
       mean(100:110)
##   then R is looking for a symbol 'mean' that has a function assigned,
##   which it will not find in your '.GlobalEnv' but down in 'package:stata'.
##   Still, it's not good programming style to assign to common symbols.#
##
## - If you'd like to clean up your namespace, use 'rm()' to remove symbols and their
##   assignments:
       rm(x, y, my.symbols)
       ls()                       # Checking that they are gone, and what other junk there is.


## * COLUMN NAMES IN DATAFRAMES AS SYMBOLS:
##
## - To simplify life with dataframes, R allows us to declare the column names
##   of a dataframe to be a namespace.  To this end, use the function 'with()':
##
       with(realEst, mean(Renttotal) )
##                        ^^^^^^^^^
##       The column name "Renttotal" has become a symbol -- unquoted!
##
##    ---------------------------------------------------
##   |  'with(df, expression)'                           |
##   |    makes the column names of the dataframe 'df'   |
##   |    a namespace in the execution of 'expression'.  |
##   |    It will be searched before ".GlobalEnv".       |
##    ---------------------------------------------------
##
##   The original equivalent expression is as follows:
       mean(realEst[,"Renttotal"])
##
## - EXAMPLE: The earlier expression
       realEst[realEst[,"Location"]=="SUBNEW" & realEst[,"Firm"]=="LEGAL", "Renttotal"]
##   can be rendered as
       with(realEst, Renttotal[Location=="SUBNEW" & Firm=="LEGAL"])

## - IF YOUR ARE DOING A LOT OF WORK INSIDE 'with()':
##   You can bundle expressions in the second argument to 'with()' with braces:
       with(realEst, { plot(Sqft, Renttotal);
                       c(mSqft=mean(Sqft), mRenttot=mean(Renttotal))  } )
##   In a bundle of expressions within '{...}', the result from the last expression is returned.
##   This is a general scheme which is not limited to 'with()':
##
##    -------------------------------------------------------
##   |  { expression1;  expression2                          |
##   |    expression3;  ...                                  |
##   |    expressionX  }                                     |
##   |                                                       |
##   |  Defines a single expression, all of whose            |
##   |  component expressions are executed in order.         |
##   |  Only the result of the last expression is returned.  |
##    -------------------------------------------------------
##
##   Silly example:
       z <- { x <- 2;  y <- 3;  x;  y;  x*y }
##                              ^^^^^   ^^^returned
##                          no effect

## - SUBSETTING:
##   Another function that works like 'with()' is 'subset()':
       subset(realEst, Location=="CITY")
##   which does the same as
       realEst[realEst["Location"]=="CITY",]
##   but is probably easier to read.
##   'subset()' needs a dataframe and a logical vector
##   to return a sub-dataframe.  The logical vector can
##   be constructed using the dataframe column names as symbols.

## - You can nest 'subset()' within 'with()':
       with(subset(realEst, Location=="CITY"), mean(Renttotal) )
##   which does the same as:
       mean(realEst[realEst["Location"]=="CITY","Renttotal"])


##================================================================


## DATA PROCESSING WITH THE PACKAGE 'DPLYR'


## * PACKAGES in R: contributed software, deposited usually on the CRAN site at
##     https://cran.r-project.org/
##   Currently > 7000 packages, and growing.
##
##   - We will use as a first package 'dplyr' by H. Wickham.
##       It has some powerful and fast ways of getting simple answers quickly
##       from dataframes.  You will be doing useful things in no time.
##
##   - Install the package 'dplyr' once:
##       RStudio:  Tools > Install Packages > (type:) dplyr > Install
##       ... (wait till it finished successfully)


## * STARTING UP WITH 'DPLYR':
##
##
##   - In every session in which you use a package, you have to
##     enact it with the 'library()' function:
         library(dplyr)
##     (Later we'll see how to do this automatically for your favorite packages.)
         search()
##     You will now find a namespace "package:dplyr" which contains the symbols
##     of data and functions that come with the package 'dplyr'.
         ls("package:dplyr")   # 202 symbols righ here!
##     We will have a look at only a handful of these.
##
##
##   - Add some printing capabilities to the dataframe
##     using the function 'tlb_df()':
         realEst.tbl <- tbl_df(realEst)
##     This is still a dataframe:
         is.data.frame(realEst.tbl)   # TRUE
##     So you can still do with it what you can do with dataframes, such as:
         dim(realEst.tbl)   # [1] 225  21
         str(realEst.tbl)
##     but the information prints in abbreviated form:
         realEst.tbl
         realEst.tbl[,"Location"]
##     as opposed to
         realEst
##     which prints the whole thing.
##     This prevents you from INADVERTENTLY PRINTING LARGE DATASETS.
##     This a nuisance that happens quite a lot by mistake because
##     few data analysts have the patience to write brackets every time
##     to limit what is printed:
         realEst[1:10,1:5]


## * THE POWERS OF 'dplyr':
##
##   The functions of 'dplyr' work like 'with()':
##   the first argument is a dataframe, and in the following arguments we can
##   use the column names as as symbols, unquoted.
##
##   The package offers a handful of intuitive functions for some of the most
##   common data-analytic tasks:
##
## - Selecting cases/rows:
       filter(realEst.tbl,    Location=="SUBNEW")           # Select cases; similar to'subset()'
       filter(realEst.tbl,    Location=="SUBNEW", Age<10)   # Select cases; combined by '&'
       # Same without 'dplyr':
           realEst.tbl[realEst.tbl[,"Location"]=="SUBNEW",]
           realEst.tbl[realEst.tbl[,"Location"]=="SUBNEW" & realEst.tbl[,"Age"]<10, ]
## - Selecting variables/columns:
       select(realEst.tbl,    Location, Renttotal, Sqft)    # Select variables/columns
       # Same without 'dplyr':
           realEst.tbl[, c("Location", "Renttotal", "Sqft")]
## - Sorting, ascending and descending:
       arrange(realEst.tbl,   Renttotal)                    # Sort by 'Renttotal', ascending
       arrange(realEst.tbl,   desc(Renttotal))              #    "         "     , descending
       arrange(realEst.tbl,   Location, desc(Renttotal))    #    "    Location, and within by -Renttotal
       # Same without 'dplyr':  (dont' worry yet...)
           ord <- order(realEst[,"Renttotal"]);                         realEst[ord,]
           ord <- order(realEst[,"Renttotal"], decr=T);                 realEst[ord,]
           ord <- order(realEst[,"Location"], -realEst[,"Renttotal"]);  realEst[ord,]
## - Global summaries:
       summarize(realEst.tbl,                               # Summary stats to your liking
                 mean = mean(Renttotal),                    # Wickham is from NZ, so he writes 'summarise()'
                 sdev = sd(Renttotal),                      # in his documentation, but both 'z' and 's' work.
                 min = min(Renttotal),
                 max = max(Renttotal),
                 n=n() )
## - Grouped summaries:
       summarize(group_by(realEst.tbl, Location),        # <<<<<<<< grouping the dataframe by 'Location'
                 mean = mean(Renttotal),
                 sdev = sd(Renttotal),
                 min = min(Renttotal),
                 max = max(Renttotal),
                 n=n() )
       summarize(group_by(realEst.tbl, Location, Firm),  # <<<<<<<< grouping the dataframe by 'Location', 'Firm'
                 mean = mean(Renttotal),
                 sdev = sd(Renttotal),
                 min = min(Renttotal),
                 max = max(Renttotal),
                 n=n() )
## - Creating new variables:
       mutate(realEst.tbl, Loc = c("CITY"="Center of City", "SUBNEW"="New Suburb", "SUBOLD"="Old Suburb")[Location])
       mutate(realEst.tbl, Rent1000 = Renttotal/1000, RentSqft = Renttotal / Sqft )


## * PIPES IN 'DPLYR':
##
##   Notation can get cumbersome even with 'dplyr' if we have to
##   nest functions inside functions.  Here is a more intuitive way of
##   achieving the same thing using the so-called 'pipe' operator '%>%':
##
       realEst.tbl  %>%  group_by(Location)  %>%  summarize(m=mean(Sqft), s=sd(Sqft))
##   Location        m        s
##      (chr)    (dbl)    (dbl)
## 1     CITY 21842.52 25640.40
## 2   SUBNEW 25795.45 26912.54
## 3   SUBOLD 19425.56 21549.29


## * HOW PIPES WORK IN 'DPLYR':
##
##   - You type the dataframe just once at the beginning of the pipe.
##     This becomes the first argument to the second expression,
##     so you type the function in the second expression without its
##     first argument (the dataframe).
##   - Subsequently, at every step of the pipe, the result of the previous
##     expression becomes the first argument to the next pipe expression.
##   - The last expression returns the final result.
##
##  What's behind '%>%'?  It is a binary operation which does just this:
##  Takes the result of the first argument and uses it as the first argument
##  to the second expressions.
##
##  Keep in mind that all 'dplyr' functions create new dataframes from old dataframes,
##  except for the 'summarize()' function.


## * A BIG EXAMPLE:
##
##   Tasks:
##   . Re-express Renttotal in $1000
##   . Calculate Rent per Sqft
##   . Re-express Sqft in 1000 Sqft
##   . Group by 'Location', and within 'Location' by 'Firm'
##   . Show grouped 'mean()' for Renttotal in $1000, Rent/Sqft, and Sqft in 1000s
##     as well as the number of properties in each group.
##
       realEst.tbl                                  %>%
           select(Renttotal, Sqft, Location, Firm)  %>%     # Not necessary but efficient
               mutate(RpS   = Renttotal / Sqft,             # Define new columns
                      R1000 = Renttotal/1000,
                      S1000 = Sqft/1000)            %>%
                   group_by(Location, Firm)         %>%     # Group by CITY, SUBNEW, SUBOLD
                       summarize(meanR1000=mean(R1000),
                                 meanRpS=mean(RpS),
                                 meanS=mean(S1000),
                                 count=n())                 # Note: counts obtained with 'n()'
##
##    Location   Firm meanR1000  meanRpS     meanS count
##       (chr)  (chr)     (dbl)    (dbl)     (dbl) (int)
## 1      CITY   BUS. 935.19782 26.84396 34.252295    17
## 2      CITY DOCTOR 136.44547 24.32557  5.620931    15
## 3      CITY   GOVT 669.92467 28.39932 23.770878    15
## 4      CITY  LEGAL 533.30180 25.10381 20.849238    25
## 5      CITY  OTHER 812.34400 22.85472 35.974685     2
## 6    SUBNEW   BUS. 827.75870 22.92507 34.553552    54
## 7    SUBNEW DOCTOR 123.12160 22.50435  5.433931    10
## 8    SUBNEW   GOVT 484.90812 21.71153 21.396540     8
## 9    SUBNEW  LEGAL 346.54900 22.01201 15.699382     9
## 10   SUBNEW  OTHER 127.57371 23.90827  5.328771     7
## 11   SUBOLD   BUS. 509.31494 21.42877 22.940759    16
## 12   SUBOLD DOCTOR  66.97362 21.25607  3.243210    13
## 13   SUBOLD   GOVT 492.71200 21.39503 22.741808     4
## 14   SUBOLD  LEGAL 599.28040 20.62781 28.251013    25
## 15   SUBOLD  OTHER  73.05100 21.17857  3.470754     5
##
##   The table as shown is hideous because of the decimals.
##   Do some reasonable rounding, and try another choice of column labels:
       realEst.tbl  %>%
           select(Renttotal, Sqft, Location, Firm)  %>%
               mutate(RpS = Renttotal / Sqft,
                      R1000 = Renttotal/1000,
                      S1000 = Sqft/1000)  %>%
                   group_by(Location, Firm)  %>%
                       summarize("Rent_($K)" =round(mean(R1000)),
                                 "Rent/Sqft" =round(mean(RpS),2),
                                 "Sqft_(K)"  =round(mean(S1000),1),
                                 "Count"     =n() )
##
##    Location   Firm Rent_($K) Rent/Sqft Sqft_(K) Count
##       (chr)  (chr)     (dbl)     (dbl)    (dbl) (int)
## 1      CITY   BUS.       935     26.84     34.3    17
## 2      CITY DOCTOR       136     24.33      5.6    15
## 3      CITY   GOVT       670     28.40     23.8    15
## 4      CITY  LEGAL       533     25.10     20.8    25
## 5      CITY  OTHER       812     22.85     36.0     2
## 6    SUBNEW   BUS.       828     22.93     34.6    54
## 7    SUBNEW DOCTOR       123     22.50      5.4    10
## 8    SUBNEW   GOVT       485     21.71     21.4     8
## 9    SUBNEW  LEGAL       347     22.01     15.7     9
## 10   SUBNEW  OTHER       128     23.91      5.3     7
## 11   SUBOLD   BUS.       509     21.43     22.9    16
## 12   SUBOLD DOCTOR        67     21.26      3.2    13
## 13   SUBOLD   GOVT       493     21.40     22.7     4
## 14   SUBOLD  LEGAL       599     20.63     28.3    25
## 15   SUBOLD  OTHER        73     21.18      3.5     5
##
##   Much better.  You can show this to your collaborators.
##
##   If you prefer nesting of Location within Firm,
##   change their order by switching the order from
##     'group_by(Location, Firm)'
##   to
##     'group_by(Firm, Location)'


## * WHAT IS RETURNED BY 'summarize()'?  A DATAFRAME!
##
##   Examine by assigning the returned structure to a symbol:
     tmp <- realEst.tbl                           %>%
              group_by(Firm)                      %>%  # Group by Firm type
                summarize("Count" = n() )            # Think of 'n()' as 'length()'.
     tmp
     str(tmp)
     is.data.frame(tmp)  # TRUE
     rm(tmp)


##================================================================


## MATRICES AND ARRAYS


## * OVERVIEW:
##
## - Matrices and arrays are like vectors: they can contain only one
##   atomic datatype.  (Recall dataframes allow different atomic types
##   in different columns.  What are the three major atomic types again?)
##
## - Matrices have two bracket positions ('dimensions'), like dataframes.
##   Arrays can have any number of bracket positions.
##
## - All the indexing and subsetting mechanisms in brackets carry
##   over from vectors to matrices and arrays in all their bracket
##   positions.
##   As in dataframes, you can simultaneously use different indexing
##   mechanisms in different bracket positions.
##
## - In a matrix, both rows and columns are also vectors, unlike
##   dataframes where only columns are vectors.
##
##
## * EXAMPLE where a matrix is more convenient than a dataframe:
##   Philadelphia monthly average temperatures 1950-1999.
       phillyTemp <- read.table("http://stat.wharton.upenn.edu/~buja/STAT-470-503/Philly-temp.txt", as.is=T)
       str(phillyTemp)
##   Oh, the file has no column names.  Here is what the instructor knows:
       colnames(phillyTemp) <- c("Year", "Jan", "Feb", "Mar", "Apr", "May", "Jun",
                                         "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
       rownames(phillyTemp) <- phillyTemp[,"Year"]
       phillyTemp[1:10,]
       phillyTemp["1951",-1]
##   We see that the rows contain monthly average temperatures for each of
##   the 12 months of a given year.  So we would like to plot a year as a
##   time series plot:
       plot(phillyTemp["1950",-1])
##   The resulting plot is some higher nonsense resulting from the fact
##   that 'phillyTemp["1950",-1]' is a DATAFRAME with one row.
##   If it were a vector, there would be no problem with plotting:
       plot((-30):90)
##   Let's convert the data to a matrix, leaving out the year column:
##
       phillyTemp.mat <- as.matrix(phillyTemp[,-1])   # <<<<<<  'as.matrix()' !!!!!!!
       str(phillyTemp.mat)
       is.matrix(phillyTemp.mat)
##
##   This looks different from dataframes: It tells us
##   - there is a single type: 'num' (numeric),
##   - the dimensions are [1:50,1:12],
##   - the first 10 values of the first column, and
##   - the first 4 row and column names.
##   In matrix form, the plotting works:
       plot(phillyTemp.mat["1950",])
##   Some improvements:
       year <- "1950"      # So we can change the year easily.
       plot(phillyTemp.mat[year,],
            type="o", pch=16, lwd=2,  # overplotting, plot character, line width
            ylim=c(-20, +20),         # larger vertical range
            xlab="Months", ylab="Temperatures",  # x and y axis labels
            main=paste("Average Monthly Temperatures in", year) # main title at top
            )
       abline(h=0, col="gray90")      # a fine horizontal reference line at y=0
##   Looks satisfactory.
##   [ Note that 'year' appears twice: to select the row and to create a main title.
##     Programming rule: If you use a value twice or more, assign a symbol for it.
##                       If you want to change the value, it's in one place only.
##    ]


## * Functions for matrices and arrays:
##
## - Query functions for matrices: same as for dataframes
       dim(phillyTemp.mat)
       nrow(phillyTemp.mat)
       ncol(phillyTemp.mat)
       colnames(phillyTemp.mat)
       rownames(phillyTemp.mat)
       phillyTemp.mat[1:3,]
       sel <- as.numeric(rownames(phillyTemp.mat))%%10 == 0
         phillyTemp.mat[sel,]
##
## - Coercion to a matrix:
       as.matrix(phillyTemp)     # dataframe to matrix
       as.matrix(1:5)            # 5 x 1 matrix
       as.matrix(data.frame("num"=1:2, "logic"=c(T,F)))                       # coercion to numeric
       as.matrix(data.frame("alpha"=letters[1:2], "num"=1:2, "logic"=c(T,F))) # coercion to character
##
## - Creating matrices by column-binding and row-binding vectors and smaller matrices:
       cbind(1:3, 11:13)                      # column bind
       rbind(1:3, 11:13)                      # row bind
       mat <- rbind(1:3, 11:13, 21:23); mat   # any number of arguments
       rbind(mat, 31:33)                      # arguments can be matrices
       cbind(1:3, cbind(11:13, 21:23))        # same as cbind(1:3, 11:13, 21:23)
       cbind("a"=1:3, "b"=11:13)              # named columns
       cbind("a"=c(x=1,y=2,z=3), "b"=11:13)   # row names inherited from first named vector
       cbind("a"=1:3, "b"=c(x=11,y=12,z=13))  # row names inherited from first named vector
       cbind(1:3, c(x=11,y=12,z=13))          # no column names, row names only
       cbind(letters, LETTERS)                # any atomic type, but one only
       cbind(seq(along=letters), letters)     # coercion of numeric to character
       cbind(c("odd","even"), letters)        # recycling
       cbind(1:3, letters)                    # coercion and recycling with warning
##
## - Filling a matrix column-wise (default) or row-wise from a vector:
       mat <- matrix(1:6, ncol=2);              mat  # column-wise filling
       mat <- matrix(1:6, nrow=3, byrow=T);     mat  # row-wise filling, default: byrow=F
       mat <- matrix(letters, nrow=2, byrow=T); mat  # row-wise filling
       mat <- matrix(letters, nrow=3);          mat  # column-wise filling with partial recycling and warning
       matrix(1:2, nrow=2, ncol=4)                   # recycling to required size
       matrix(1:3, nrow=2, ncol=4)                   # recycling with warning
       matrix(1:3, nrow=2, ncol=3)                   # recycling without warning
##
## - Coercing a matric to a vector:
       as.vector(mat)
##   Q: What happened?
##   A: The matrix was strung out column-wise!
##
##    ------------------------------------
##   |  Matrices are stored column-wise.  |
##    ------------------------------------
##
##   If you index a matrix like a vector, it will be coerced to a vector:
       mat <- matrix(letters, ncol=2)
       mat[14]       # 14th element as a vector is ...
       mat[1,2]      # ... the 1st element in the 2nd column
##   Why?  Because 13+1 = 14   (nrow(mat)==13).


## - Patching ROW NAMES and COLUMN NAMES on matrices:
       mat <- matrix(1:6, ncol=2)
       mat
       colnames(mat) <- LETTERS[1:ncol(mat)]
       rownames(mat) <- letters[1:nrow(mat)]
       mat

##
## - Operations on matrices that do NOT work on dataframes:
       mat <- cbind(1:3, 11:13)                    # to play with
## . TRANSPOSITION with 't()': mirroring on the diagonal
       mat <- matrix(1:6, nrow=3);  mat            # numeric matrix
       t(mat)
       tmat <- t(mat);  tmat[1,2] == mat[2,1]      # mirror positions [1,2], [2,1] are identical
       mat <- matrix(c(T,F), nrow=2, ncol=3);  mat # logical matrix
       t(mat)
       mat <- matrix(letters[1:6], nrow=3);  mat   # character matrix
       t(mat)
## . Extract the DIAGONAL as a vector: cells [1,1], [2,2], ...
       diag(mat)
       diag(cbind(1:3,letters[1:3]))
## . MULTIPLICATION of a matrix with a vector: used in linear regression, e.g.
       beta <- c("intercept"=1, "slope"=0.5)  # Coefficients of a simple regression
       X <- cbind("i'cept"=1, "x"=1:10)       # Predictor matrix of the regression
       X %*% beta                             # The mean response vector if the model is true.
       X[,1]*beta[1] + X[,2]*beta[2]          # Same
## . Try the above functions/operations with dataframes:
       X.df <- data.frame(1, 1:10)            # Predictor dataframe of the regression
       is.data.frame(X.df)                    # TRUE
       is.matrix(X.df)                        # FALSE
       t(X.df)                                # 't()' coerces dataframe to matrix!
       is.matrix(t(X.df))                     # TRUE   (confirms coercion)
       diag(X.df)                             # ERROR!  'diag()' does NOT coerce dataframe to matrix.
       diag(as.matrix(X.df))                  # Works; explicit coercion with 'as.matrix()'
       X.df %*% beta                          # ERROR!  '%*%' does NOT coerce dataframe to matrix.
       as.matrix(X.df) %*% beta               # Works; explicit coercion with 'as.matrix()'
##
## - Creating numeric DIAGONAL matrices with 'diag()':
##   Above we have used 'diag()' to extract the diagonal from a matrix,
##   which worked on
       diag(4)               # Creates an 'identity' matrix of size 4 x 4
       diag(4:1)             # Creates a matrix with vector elements in the diagonal
       diag(letters[1:4])    # ERROR!  'diag()' doesn't know what to use off-diagonal.
       mat <- cbind(1:3, 11:13) # for play
       diag(mat) <- 0;   mat # assigns the value 0 to the diagonal elements
       diag(mat) <- 8:9;  mat # assigns the values of a vector to the diagonal
##
## - IMPORTANT!  SINGLE ROW/COLUMN SELECTIONS RETURN VECTORS, NOT MATRICES!!!
       mat <- cbind(1:3, 11:13)
       mat[1,]              # returns a vector, not a matrix
       is.matrix(mat[1,] )  # FALSE
       is.vector(mat[1,] )  # TRUE
       mat[,2]              # same: a vector, not a matrix
##   If you must return a matrix of size mx1  or  1xn
##   add the following clause to the brackets:
       mat[,2,drop=F]       # 3x1 matrix, not a vector
       mat[1,,drop=F]       # 1x2 matrix, not a vector
       is.matrix(mat[,2,drop=F])  # TRUE
       is.vector(mat[,2,drop=F])  # FALSE


## * ARRAYS: MATRICES GONE HAYWIRE
##
## - Arrays are like vectors and matrices but may have
##   MORE THAN ONE OR TWO BRACKET POSITIONS FOR INDEXING.
##
## - Arrays must also contain a SINGLE ATOMIC DATA TYPE,
##   like vectors and matrices.
##
## - Major use of arrays:
##   Tabulations of 3 and more categorical variables.

## - CREATING ARRAYS:
##
       arr <- array(1:24, dim=c(2,3,4))
       arr
##   This is shown as 4 matrices of size 2 x 3
##   glued together by the 3rd index.
       arr[1,2,3]      # Interpretation: '1st row, 2nd column, 3rd matrix'
       arr[,,3]        # Returns a matrix!
       arr[,2,]        # Returns a matrix
       arr[1,,]        # Returns a matrix
       arr[,-1,]       # Returns an array
       as.vector(arr)
       c(arr)
##   Array of character data:
       arr.let <- array(LETTERS, dim=c(3,3,3))
##   (Strange, no warning even though 26 is not a divisor of 3x3x3=27.]
       arr.let         # Note "A" recycled to extend 26 LETTERS to 27.
       arr.let[2,3,1]  # 8th letter: 2nd row, 3rd col, 1st matrix
       arr.let[,3,]    # matrix
##
## - DIMENSIONS:
       dim(arr)
       dim(arr.let)


#================================================================
##
## ONE MORE DATA STRUCTURE: LISTS -- THE UNIVERSAL DATA SHOPPING CARTS
##


## * MOTIVATION: So far we have learned about data structures that
##   have constraints:
##   . Vectors, matrices, arrays can have only one atomic data type in all their cells.
##   . Dataframes can have only one atomic data type in their columns.
##   . All these data structures can contain only atomic data in their cells,
##     not compposite types such as other vectors, matrices, arrays, dataframes.
##   So we may ask:
##   (1) Is there a data type whose cells can have arbitrary data types?
##   (2) Furthermore, is there a data type that can contain other composite
##       data structures?

##   These questions have some urgency: Imagine a function that
##   performs a regression analysis.  Shouldn't it returns things like
##   RSquare (single value), a 2-vector of degrees of freedom (model
##   and residual), a table of coefficient estimates, their standard
##   errors, their t-statistics, their p-values, maybe a residual vector?
##
## * The answer to both questions (1) and (2) is:   LISTS  !!!!
##   Don't infer anything from this name -- it's just a word.
##   In R, 'list' is a composite data type that can contain ANYTHING.
##   It is totally unconstrained and can contain ...
##   . atomic data (single numeric, logical or string values),
##   . vectors of any atomic type,
##   . matrices    "
##   . arrays      "
##   . dataframes of any sort, and
##   . OTHER LISTS!
##   If new types of data structures are being invented, lists can contain them.
##   [In fact, new data types are probably just special lists.]


## * 'list()' is used to form lists:
         list(1, seq(0,1,len=5), "a", TRUE, NA, NaN, Inf, -Inf, pi, letters, Salary.df, phillyTemp.mat)
##   This is like the function 'c()' to form vectors,
##   but there is NO CONSTRAINT on what the elements can be.
##
##   Lists are R objects, hence can be assigned to symbols:
         Potpourri <- list(1, seq(0,1,len=5), "a", TRUE, NA, NaN, Inf, -Inf, pi, letters, Salary.df, phillyTemp.mat)
         Potpourri
##   List elements can be given names:
         Potpourri <- list("one"=1,
                           "a_sequence"=seq(0,1,len=5),
                           "letter_a"="a",
                           "a_logical_value"=TRUE,
                           "NA"=NA,
                           "not.a.number"=NaN,
                           "infinity"=Inf,
                           "negative_infinity"=-Inf,
                           "the number pi"=pi,
                           "lower case letters"=letters,
                           "salary dataframe"=Salary.df,
                           "Philly Temperature Matrix"=phillyTemp.mat,
                           "yet another list"=list("abc",c(T,F),1:3))
         Potpourri
##   Hm, the printing has changed: Elements are no longer shown with double brackets
##   but with dollar signs '$' followed by the element name.


## * FUNCTIONS THAT WORK ON ANY DATA STRUCTURE:
         length(Potpourri)
         names(Potpourri)       # Will be NULL if there are no names.
         is.list(Potpourri)
         is.vector(Potpourri)   # TRUE: Huh!  Lists are vectors!  See below for an explanation.
         is.numeric(Potpourri)  # FALSE
         typeof(Potpourri)      # "list"
##   The funtion 'typeof()' can't report a uniform atomic data type
##   because of heterogeneous element types in lists, so it reports "list".
##
##   If you want to know the composite data type such as "matrix", "array", "dataframe",
##   you need to use the function 'class()':
         class(phillyTemp)
         class(phillyTemp.mat)
         class(array(1:24,dim=c(2,3,4)))
         class(1:10)            # agrees with 'typeof()'
         class(Potpourri)       # agrees with 'typeof()'
##   [Later we will see that we can define our own classes,
##    which will provide a powerful programming technique.]


## * LIST ELEMENTS:
##
## - List elements can be accessed with double brackets '[[...]]':
         Potpourri[[2]]
         Potpourri[[12]]
##   These are 'elements' of the list, but some are composite
##   datastructures themselves.
##
## - If the elements have names, they can be accessed by name in two ways:
##   . in double brackets and name as a string in quotes:
         Potpourri[["one"]]
         Potpourri[["a_sequence"]]
         Potpourri[["not.a.number"]]
##   . prefixed by '$' and written as a symbol, unquoted:
         Potpourri$one
         Potpourri$a_sequence
         Potpourri$not.a.number
##   If the element name contains strange characters such as spaces,
##   the name needs to be quoted even after the '$':
         Potpourri[["the number pi"]]
         Potpourri$"the number pi"
##   As for vectors, the function 'names()' returns a character vector of names:
         names(Potpourri)
##
## - Elements that are composite can be treated just as what they are.
##   For example,
         Potpourri$"Philly Temperature Matrix"
##   is a matrix, so you can access the 3rd element in the 2nd column by
         Potpourri$"Philly Temperature Matrix"[3,2]
##   and its rownames by
         rownames(Potpourri$"Philly Temperature Matrix")
##   Of course it's all a little more readable if you first assign it:
         x <- Potpourri$"Philly Temperature Matrix"
         x[3,2]
         rownames(x)
##
## - '[[...]]' and '$' can access only ONE ELEMENT AT A TIME!
##   For this reason, the following does not work:
         Potpourri[[1:3]]
##   It can't make sense, because this should be a sublist,
##   but '[[...]]' and '$' can only access elements, not sublists.
##   So do we get at sublists?


## * SUBLISTS are accessed with single brackets '[...]'.
##
##    ---------------------------------------------
##   |   Distinguish 'elements' and 'sublists' !!  |
##   |   . Sublists are lists again.               |
##   |   . Elements are actual content.            |
##    ---------------------------------------------
##
## - SUBLISTS an be selected with POSITIVE INTEGERS in single brackets:
         Potpourri[2:4]
         Potpourri[c(1,5,8)]
         sel <- 5:8
         Potpourri[sel]
##
## - SUBLISTS can be formed by deselecting elements with NEGATIVE INTEGERS:
         Potpourri[-12]
         Potpourri[-(6:12)]
         sel <- -c(1,3,5,7,9,11)
         Potpourri[sel]
##
## - SUBLISTS can be selected with vectors of LOGICAL VALUES:
         Potpourri[c(T,T,T,T,T,T,F,F,F,F,F,F)]
         Potpourri[c(T,F)]     # What mechanism is at work in the bracket?
         sel <- c(T,F)
         Potpourri[sel]
##
## - SUBLISTS can be selected with vectors of ELEMENT NAMES:
         Potpourri[c("one","the number pi")]
         sel <- c("one","the number pi")
         Potpourri[sel]
##
## - Trick question: What is the following?
         Potpourri[1]
##   What did we say is selected by single brackets?
         x <- Potpourri[1]
         x
         class(x)
##   So this is what?  ...
##   What is its content?  How do you get at it?
##   Next trick question: What are the following?
         Potpourri[1][1]
         x[1]              # ...???
##   How do you get at the element?
         x[[1]]
##   even though 'x' contains only one element, it's still a list.


## * WHY IS THERE NO DISTINCTION BETWEEN ACCESSING ELEMENTS AND
##   SUBVECTORS OF VECTORS ??
##
##   Explanation:
##   . R doesn't have a notion of a single value.
##   . A single value is a vector of length 1.
##   . Even if you select a single element 'a[1]'
##     from vector 'a', it is a subvector of length 1.
         a <- 1
         a              # Note '[1]' at the beginning of the returned line
         a <- c(1)      # Unnecessary use of 'c()': it becomes a vector anyway.
         a
         length(a)
         a[1]
         length(a[1])
         is.vector(a)
         is.vector(a[1])
##   . This is different for lists:
         b <- list(1)   # 'list()' is compulsory for forming a list
         b
         length(b)
         b[[1]]
         is.list(b)
         is.list(b[1])
         is.list(b[[1]])


## * MENTAL MODEL FOR STORAGE OF VECTORS AND LISTS IN MEMORY:
##
##   . Vectors store CONTENT in contiguous memory locations.
##
           a <- c(1.2, -3.9, NA)
##
##          'a':    symbol 'a':  type="double", length=3
##           |
##           |
##           v
##         ------
##        |  1.2 |
##        | -3.9 |
##        | NA   |
##         ------
##
##   . Lists store ADDRESSES TO CONTENT in contiguous memory locations:
##
           b <- list(x=1.2, y=c(T,F), z=cbind(1:2,11:12))
##
##          'b':    symbol 'b':  type="list", length=3, names=c("x","y","z")
##           |
##           |
##           v
##         ------           -----
##        | addr1 |  ----> | 1.2 |   type="double", length=1
##        | addr2 |  _      -----
##        | addr3 |   \     -------
##         ------      --> | TRUE  | type="logical", length=2
##           |             | FALSE |
##           |              -------
##           |              ----
##            -----------> |  1 |    type="numeric", dim=c(2,2)
##                         |  2 |
##                          -----
##                         | 11 |
##                         | 12 |
##                          -----
##
##     The fact that lists should be thought of as vectors of addresses
##     explains two facts:
##     . Lists can contain heterogeneous content (data of all types).
           typeof(b[["x"]]);  typeof(b[["y"]])
##     . Lists are also vectors, but not of content but of addresses to content:
           is.vector(b)   # TRUE


## * GROWING A LIST:
           ml <- list()
           ml[[1]] <- letters
           ml[[2]] <- LETTERS
           ml[[3]] <- 1:10
           ml


## * DATAFRAMES ARE IMPLEMENTED AS LISTS:
##
##   . Example:
         phillyTemp                # Recall: we defined this earlier.
         is.data.frame(phillyTemp) # TRUE
         class(phillyTemp)         # "data.frame"
         is.list(phillyTemp)       # TRUE: dataframe is a list!
##
##   . We said earlier that we will be able to define our own 'class'es.
##     Well, 'data.frame' is a 'class' that was defined based on lists:
##     a list of vectors of the same length.
##     In addition, one defined a few class-specific (dataframe-specific)
##     'generic' functions such as
##     'colnames()', 'rownames()', 'nrow()', 'ncol()', 'dim()', ...
##     as well as access to cells, rows and columns through
##     two index positions in the brackets.
##
##   . With this information you can do your own practice
##     handling the dataframe 'my.classes' as a list:
##     + What are the list element names of 'my.classes'?
##     + What is the length of 'my.classes'.
##     + Access the list element "DoW" in 'my.classes'!
##     + Access the second vector element in the "DoW" vector
##       of 'my.classes'!


## * IMPORTANT FUNCTION: 'unlist()'
##
         unlist(Salary.df)
         unlist(Potpourri)
##   This function collects all elements of atomic data type in a single vector,
##   coercing them if necessary.
         unlist(list(1:3, list(1,list("a","b")), 11:13, list(), "Z"))
##   The empty list 'list()' was correctly handled: it has no elements.


## * DIMENSION NAMES OF MATRICES AND ARRAYS ARE PACKAGED IN LISTS:
         dimnames(phillyTemp.mat)
##   'dim()' can be a plain vector because it contains just one integer per dimension:
         dim(phillyTemp.mat)
##   'dimnames()' can be assigned:
         mat <- cbind(1:3, 11:13)
         dimnames(mat)               # NULL
         dimnames(mat) <- list(letters[1:nrow(mat)], LETTERS[1:ncol(mat)] )
         dimnames(mat)
         mat
         dimnames(mat) <- list("RowDim"=letters[1:nrow(mat)], "ColDim"=LETTERS[1:ncol(mat)] )
         dimnames(mat)
         mat
##   Compare with 'rownames()' and 'colnames()':
##   They return plain vectors, hence aren't lists.
##   Their disadvantage is that they don't generalize to higher-dimensional arrays.
##   One would need a word like 'row', 'col' for each dimension.
##   ==> For arrays, 'dimnames()' needs to be a list.


#================================================================
##
##
## PROGRAMMING: LOOPS
##
##
## * 'Loops' are programming constructs for repeated execution of code
##   with small variations.
##   In R, loops are repeated executions along a vector or a list,
##   most frequently '1:n' for some value 'n'.
##
## - The R syntax for a basic loop is of the form
##
##      ----------------------------------------------------------
##     |  for(i in vec.or.list) { ...(R code that uses 'i')... }  |
##      ----------------------------------------------------------
##
## - Simple example: Print the numbers 1,...,10.
##
         for(i in 1:10) { print(i) }
##
##   The expression '{ print(i)}' is executed for each value of 'i' in '1:10'.
##
##    -----------------------------------------------------------------------
##   |                                                                       |
##   |  In a loop you are free to choose:                                    |
##   |                                                                       |
##   |  . a symbol for the looping variable                                  |
##   |     (here: 'i'),                                                      |
##   |                                                                       |
##   |  . any loop data structure that can be coerced to a vector or a list  |
##   |     (here: '1:10'),                                                   |
##   |                                                                       |
##   |  . code of any length in '{...}'                                      |
##   |     (here: 'print(i)').                                               |
##   |                                                                       |
##    -----------------------------------------------------------------------
##
## - An example where the data structure is a list (namely, a dataframe):
         for(column in my.classes) { print(typeof(column)) }
##   More informative would be printing the column name as well,
##   but to this end we better loop over index positions:
         for(j in seq(len=length(my.classes))) {   # Use this, not 1:length(my.classes) !!
             print(paste(colnames(my.classes)[j],":",typeof(my.classes[,j]))) }
##   Maybe the following would be more readable:
         for(j in seq(len=length(my.classes))) {
             colname <- colnames(my.classes)[j]
             coltype <- typeof(my.classes[,j])
             string <- paste(colname, ": ", coltype, sep="")
             print(string)
         }


## * EXAMPLE PROBLEM 1: Draw sin() waves with 4 periods in one plot.
##
##   . Set up a plot window with a first sin() wave:
         x <- seq(0, 2*pi, len=1000)
         plot(x, sin(x), type="l", xlab="Time", ylab="Amplitude")
         abline(h=0, col="gray90")   # Add a faint gray base line.
         lines(x, sin(2*x))          # Add a sin() curve with 2 periods.
         lines(x, sin(3*x))          # Add a sin() curve with 3 periods.
         lines(x, sin(4*x))          # Add a sin() curve with 4 periods.
##
##   . The last 4 calls to 'lines()' can be done in a 'for'-loop:
         x <- seq(0, 2*pi, len=1000)
         plot(x, sin(x), type="l", xlab="Time", ylab="Amplitude")
         abline(h=0, col="gray90")             # Faint gray base line
         for(j in 2:4) { lines(x, sin(j*x)) }
##       ^^^^^^^^^^^^^^^ LOOP !!!!!!!!
##       The code 'for(j in 1:4)' says to execute the following expression
##       setting the variable 'j' to all values in '2:4' in sequence.


## * EXAMPLE PROBLEM 2: Draw sin() waves with 4 periods each in a separate plot:
         x <- seq(0, 2*pi, len=1000)
         par(mfrow=c(2,2))           # Set up 4 plotting regions in a 2x2 layout.
         for(j in 1:4) {             # Use 'plot()' in each frame.
             plot(x, sin(j*x), type="l", xlab="Time", ylab="Amplitude")
             abline(h=0, col="gray90")             # Faint gray base line
         }


## * EXAMPLE PROBLEM 3:
##   Create an animation of sin() waves with slowly increasing fractional periods.
         x <- seq(0, 2*pi, len=1000)
         par(mfrow=c(1,1))             # We don't want the 2x2 layout anymore.
         periods <- seq(1,20,len=2000)
         for(j in periods) {
             plot(x, sin(j*x), type="l", lwd=2, xlab="Time", ylab="Amplitude")
             abline(h=0, col="gray90")    # Faint gray base line
             dev.flush(); Sys.sleep(0.05)
         }
##       If you want to stop this, hit 'ESC.
##
##       The cryptic function calls at the end tell R to
##       complete a plot ('dev.flush()') and 'sleep' for 0.05=1/20 seconds.
##
##       [The original code did not work in RStudio.
##       It choked the plotting process by stuffing too many
##       calls to 'plot()' too quickly down its throat.
##       With 'dev.flush()' and 'Sys.sleep(0.05)' the plotting
##       is forced to complete and slowed down to less than once
##       in 1/20 of a second.
##       This gives the plotting process time to complete the
##       current call to 'plot()' before another call is issued.
##       You may have to replace '0.05' (1/20 second)
##       with a larger value such as 0.10 (1/10 second)
##       to make it work for you.  Do some experimentating.
##       The larger the sleep duration, the more jumpy the
##       motion gets, though.]


## * EXAMPLE PROBLEM 4: Plot the Philly temperatures for 1950-1955,
##     one year per plot, in a 3x2 layout, filling the columns first.
         par(mfcol=c(3,2))                # In the 3x2 layout fill the columns first.
         years <- as.character(1950:1955) # What we will be looping over
         for(yr in years) {
             plot(phillyTemp.mat[yr,], type="o", pch=16,
                  ylim=c(-15,+25),                       # same vertical scale for all
                  xlab="Months", ylab="Temp",            # axis labels
                  main=yr) }                             # title = year


## * EXAMPLE PROBLEM 5: List all the objects in all the namespaces.
         for(ns in search()) { print(ls(ns)) }
##     This doesn't print the package names.  Fix it:
         for(ns in search()) {
             print(paste("-----------------",ns,"---------------"))
             print(ls(ns)) }
##     Search backwards for '[1]' in the Console to find the beginnings


## * EXAMPLES OF WHERE NOT TO USE LOOPS:
##   . The following is just '1:10':
         a <- c()
         for(j in 1:10) { a <- c(a,j) }
         a
##   . The following is just 'sum(1:10)':
         s <- 0
         for(j in 1:10) { s <- s+j }
         s
##   . These two example show how things are done in a low-level
##     language

##
##      ----------------------------------
##     |  Avoid loops whenever possible.  |
##      ----------------------------------


## * WHAT DO LOOPS RETURN?  NULL!
##
##   We said that all R expressions return something,
##   so we should be able to write the following:
         x <- for(j in 1:5) { j }
         x
##   A loop returns NULL, so there is no point of using
##   a loop expression in an assignment.
##
##    --------------------------------------------------------------
##   |                                                              |
##   |  The point of a loop is to have a 'side effect'              |
##   |  (a technical term) rather than returning a data structure.  |
##   |                                                              |
##   |  'Side effects' include:                                     |
##   |  . assigning variables (changing the namespace '.GlobalEnv'),|
##   |  . printing data structures (changes your console),          |
##   |  . plotting (changes your plot window).                      |
##   |                                                              |
##    --------------------------------------------------------------


## * OTHER WAYS OF LOOPING: 'APPLY' FUNCTIONS
##
## - 'sapply()' and 'lapply()' allow you to loop over anything
##   as long as it is, or can be coerced to, a list or a vector.
##   They apply a function, provided in the second argument,
##   to all elements of the vector/list:
##
##   . 'lapply()' returns a list:
         lapply(Potpourri, length)
##
##   . 'sapply()' returns a 's'implified version if possible:
         sapply(Potpourri, length)
##
##     ==> Because of the uniform type returned by 'length()',
##         'sapply()' simplifies the list to a vector.
##   More examples:
         sapply(Potpourri, typeof)
         sapply(Potpourri, class)
         sapply(Potpourri, is.matrix)
         sapply(Potpourri, is.data.frame)
##   This is much more handy than a 'for' loop because it can be assigned:
         x <- sapply(Potpourri, typeof)
         x
         x[1:3]
         x["one"]
##   Also, here is a one-liner for listing every function and dataset
##   in all namespaces:
         sapply(search(), ls)
##   [You will need to do a text search for '[1]' to find all the
##   beginnings of the namespaces.]

##
## - 'apply()' for matrices and arrays:
         mat <- cbind(1:3, 11:13)
         apply(mat, 1, sum)    # Apply 'sum()'  to all rows of 'mat'.
         apply(mat, 2, mean)   # Apply 'mean()' to all cols of 'mat'.
         apply(mat, 2, sd)     # Apply 'sd()'   to all cols of 'mat'.
         apply(mat, 2, max)    # Apply 'max()'  to all cols of 'mat'.
##   If you did this with loops, it would be as follows:
         x <- rep(NA, nrow(mat))       # Pre-allocate a vector of suitable length.
         for(i in 1:length(x)) { x[i] <- sum(mat[i,]) } # Loop the C and Java way.
         x
##   Using 'apply()' is preferable for brevity of code:
         x <- apply(mat, 1, sum)
         x
##   There is no need to pre-allocate a data structure for the results.


## * AVOIDING R LOOPS WITH FAST VECTORIZED FUNCTIONS:
##
## - FACT: The functions 'sapply()', 'lapply()' and 'apply()'
##         are NOT faster than a 'for()' loop.
#          They only make for more concise code.
##
## - For common looping tasks there exist very fast functions.
##   These concern mainly vectors and matrices.
##
## - The following functions map vectors to numbers.
##   Down in the guts of R is C code that executes
##   very fast C loops to compute them.
         x <- 1:10
         length(x)
         sum(x)
         mean(x)
         sd(x)
         var(x)
         max(x)
         min(x)
##
## - The following functions map vectors to vectors:
         x <- c(1,2,3,2,1,0,-1,-2,-3,-2,-1)
         cumsum(x)       # length=n
         cumprod(x)      # length=n
         cummax(x)       # length=n
         cummin(x)       # length=n
         diff(x)         # length=n-1
         sort(x)         # length=n
         rank(x)         # length=n
         range(x)        # length=2
##
## - The following functions map matrices to vectors:
         mat <- cbind(1:3, 11:13)
         rowSums(mat)    # No need for  'apply(mat, 1, sum)'
         colSums(mat)    # No need for  'apply(mat, 2, sum)'
         rowMeans(mat)   # No need for  'apply(mat, 1, mean)'
         colMeans(mat)   # No need for  'apply(mat, 2, mean)'
##   No such functions exist for 'sd()', 'min()', 'max()',..., so
##   this is where you have to fall back on 'apply(mat, ..., ...)':
         apply(mat, 1, sd)
         apply(mat, 2, sd)
         apply(mat, 1, max)
         apply(mat, 2, max)


#================================================================
##
##
## PROGRAMMING: CONDITIONAL EXECUTION -- 'if()', 'switch()' and 'ifelse()'
##
##
## * MOTIVATION: We saw earlier how to translate, for example, "Y"/"N"
##   labels to "Yes"/"No" labels or to 1/0 values, using named vectors
##   as the translation mechanism.  For many among us, a more natural
##   way to think about this translation is in terms of conditional
##   statements: 'if "Y", make it 1, else make it 0.'  This kind of
##   thinking is supported in R in several ways:
##   - conditional expression  'if() {...}'
##   - conditional expression  'if() {...} else {...}'
##   - conditional expression  'switch()'
##   - the function             'ifelse()'
##
##   Let's solve the translation problem using each of these ways
##   using the following vector to play with:
         x <- c("Y","N","!%*$#",NA,"Y","Y","N")
##   It has a miscoding and a NA value on purpose so as to force us to
##   create robust code and to decide what it is we want there are NA
##   and miscodings.


## * 'if() {...}':
##   This can only handle one logical value at a time, so we need to
##   loop and process elements one at a time:
         y <- rep(NA, length(x))       # Allocate a result vector.
         for(i in seq(len=length(x))) {
             if(x[i]=="Y") { y[i] <- 1 }
             if(x[i]=="N") { y[i] <- 0 }
         }
         y
##   The above solution maps miscodings to NA but creates an error for
##   NA.  The reason is that 'if()' really wants a proper logical
##   value, not an NA.  More robust code is as follows:
         y <- rep(NA, length(x))       # Allocate a result vector.
         for(i in seq(len=length(x))) {
             if(!is.na(x[i])) {
                 if(x[i]=="Y") { y[i] <- 1 }
                 if(x[i]=="N") { y[i] <- 0 }
             }
         }
         y
##   This code leaves NA values alone and maps miscodings to NAs.


## * 'if() {...} else {...}':
##   If the task is to translate "Y" to 1 and anything else to 0,
##   but preserved NAs, then the following code will be appropriate:
         y <- rep(NA, length(x))       # Allocate a result vector.
         for(i in seq(len=length(x))) {
             if(!is.na(x[i])) {
                 if(x[i]=="Y") { y[i] <- 1 } else { y[i] <- 0 }
             }
         }
         y
##
##   Summary:
##
##    ----------------------------------------------------------
##   |                                                          |
##   |  if(single.logical) { ... } else { ... }                 |
##   |  if(single.logical) { ... }                              |
##   |                                                          |
##   |    [For side effects: assignments, printing, plotting]   |
##   |                                                          |
##   |  x <- if(single.logical) { ... } else { ... }            |
##   |  x <- if(single.logical) { ... }      # NULL if FALSE    |
##   |                                                          |
##   |    [Functional use: return a result]                     |
##   |                                                          |
##   |  WARNING: If the logical value is NA, an error results.  |
##   |                                                          |
##    ----------------------------------------------------------
##
##   With functional use, you can return anything:
         z <- 3
         x <- if(z==3) { 1:10 } else { letters }
         x
         x <- if(z==1) { 1:10 } else { letters }
         x
         x <- if(z==1) { 1:10 }
         x
##   These are equivalent to:
         if(z==3) { x <- 1:10 } else { x <- letters }
         x
         if(z==1) { x <- 1:10 } else { x <- letters }
         x
         x <- if(z==1) { x <- 1:10 } else { x <- NULL }
         x


## * 'switch()' is like 'if()' as it can only deal with one condition
##   at a time, but it can handle more than a binary TRUE/FALSE
##   choice.  In fact, it can handle as as many choices as you like:
         x <- c("Y","N","!%*$#",NA,"Y","Y","N")
         y <- rep(NA, length(x))       # Allocate a result vector.
         for(i in seq(len=length(x))) {
             y[i] <- switch(x[i], "Y" = 1, "N" = 0, NA)
         }
         y
##   An equivalent 'side effect' version is as follows:
         y <- rep(NA, length(x))       # Allocate a result vector.
         for(i in seq(len=length(x))) {
             switch(x[i], "Y" = { y[i] <- 1 }, "N" = { y[i] <- 0 }, NA)
         }
         y
##   The first argument is supposed to produce a string;
##   the remaining arguments are of the form 'string = {...}'.
##   'switch()' looks for a match of the string among the remaining args;
##   if there is no match, it uses the unnamed default argument (if any)
##   or it returns NULL if there is no unnamed default argument.
##   In the example above, NA is the default argument, so both.
##   the miscoding and the NA in 'x' are mapped to NA.
##
##   This construct is not often used but it simplifies code when
##   there are several conditions on which to dispatch.
##
##   There is a second way of using 'switch()' without named
##   arguments.  Instead, the first argument is assumed to evaluate to
##   a positive integer.  If this integer is 2, for example, the
##   second of the subsequent arguments is evaluated:
         switch(2, { print("a") }, { print("b") }, { print("c") } )  # Prints "b"
         switch(5, { print("a") }, { print("b") }, { print("c") } )  # Does nothing.
         for(i in (-2):5) {
             switch(i, { print("a") }, { print("b") }, { print("c") } ) }
##       In this loop, 'switch()' prints for i = 1, 2, 3,
##       but ignores i = -2, -1, 0 as well as i = 4, 5.
##
##   Summary:
##
##    --------------------------------------------------------------------
##   |                                                                    |
##   |  switch(one.string,  "str1" = {...}, "str2" = {...}, ..., {...} )  |
##   |                                                                    |
##   |  switch(one.integer, {...}, {...}, {...}, ... )                    |
##   |                                                                    |
##   |    ['Side effects' use: assignments, printing, plotting]           |
##   |                                                                    |
##   |  x <- switch(one.string,  "str1" = {...}, "str2" = {...}, {...} )  |
##   |                                                                    |
##   |  x <- switch(one.integer, {...}, {...}, {...} )                    |
##   |                                                                    |
##   |    [Functional use: return a result]                               |
##   |                                                                    |
##    --------------------------------------------------------------------


## * 'ifelse(,,)':
##
##   This is not a control structure but a function for vectorized
##   conditional execution.  This is FAST!  Use it whenever possible.
##   It is one way to avoid loops!
##
##   The function takes three vector arguments of the same length
##   (recycled to same length if necessary):
##   . 1st arg: a logical vector,
##   . 2nd and 3rd arg: vectors of the same atomic type (or else
##     coerced to same type).
##   For length 1, 'ifelse()' works as follows:
##       'ifelse(TRUE,  x, y)'  returns x
##       'ifelse(FALSE, x, y)'  returns y

##   For length > 1, the above is done element by element down the
##   three vectors, position by position.
##   Example:
         ifelse(c(T,F), c(1,2), c(11,12))
##   returns  c(1,12).
##
##   'ifelse()' provides concise solutions for the translation problem:
         x <- c("Y","N","!%*$#",NA,"Y","Y","N")
         y <- ifelse(x=="Y", 1, 0)   # 1 and 0 are recycled to length(x).
         y
##   It maps NA to NA and miscodings to 0.
##   If miscodings are supposed to become NA, one needs nested 'ifelse()':
         y <- ifelse(x=="Y", 1, ifelse(x=="N", 0, NA))
         y
##
##   Summary:
##
##    ----------------------------------------------------------
##   |                                                          |
##   |  x <- ifelse(logic.vec, T.vec, F.vec)                    |
##   |                                                          |
##   |       Not a control structure but a function.            |
##   |                                                          |
##   |       WARNING: The 2nd and 3rd arg are fully evaluated   |
##   |                even for values that will not be needed.  |
##   |                                                          |
##    ----------------------------------------------------------
##
##   Example where the WARNING applies:
         ind <- 1:5
         x <- ifelse(ind <= ncol(my.classes), my.classes[1,ind], "")
##   This creates an error.  Why?
##   You might think that 'my.classes[1,ind]' is fine because
##   the logical condition asks only for  'ind <= ncol(my.classes)',
##   in which case  'my.classes[1,ind]'  is valid.
##   However, the second argument is evaluated in all positions,
##   not just those for which the first argument returns TRUE,
##   resulting in an error.


## * Trade-offs between 'if() {...} else {...}' and 'ifelse(,,)':
##
##   . 'ifelse()':
##       Pro: takes multiple logical values ==> vectorized ==> faster
##       Con: evaluates alternatives that are not needed, can cause errors.
##
##   . 'if() {...} else {...}':
##       Con: takes just one logical value ==> requires looping ==> slower
##       Pro: does not evaluate unneeded alternatives, hence safer.


#================================================================
##
##
## PROGRAMMING: WRITING YOUR OWN FUNCTIONS
##
##
## * FUNCTIONS SO FAR: We have learned ...
##
##   - that there exists a bewildering number of functions in R
##     for any conceivable task;
##
##   - that learning to make use of them is part of the power of
##     the language;
##
##   - that you should get used to learning about, and looking for,
##     functions with help() [always check the 'See also:' section];
##
##   - that functions can be given arguments in more than one way:
##     by position and/or by name;
##
##   - that most functions return a result, which is the point
##     of using them;
##
##   - that the point of using other functions is not to compute
##     a result but to create a 'side effect:'
##     . printing something: print()
##     . plotting something: plot(); points(); lines(); abline(); ...
##     . changing the internal state of R, e.g., for plotting: par()
##
##   In all this we haven't made much the experience that R still
##   doesn't have enough functions.  Consider, however, the following
##   situations:
##
##   - You have fine-tuned a plot or set of plots, resulting in maybe
##     10-20 lines of R code.  Now you want to use the code over and
##     over on new data.
##
##   - You don't like some default parameters in existing R functions
##     ['plot()' comes to mind] and you would like to create a new
##     function that does the same as the existing function but has
##     different defaults.
##
##   - You use a certain function always the same way and you are
##     getting tired having to specify all the necessary arguments
##     every time.
##
##   - You find a function name hard to remember or too long, so you
##     want to make it more memorable for yourself or simply shorter.
##
##   - You find yourself writing 'for()' loops because there is no
##     function that could be given to 'sapply()' as its second
##     argument.
##
##   - ...
##
##   The upshot is:

##        You really want to be able to write functions of your own!


## * WRITING FUNCTIONS: It's simple!
##
## - Example: Write a function 'smry()' that returns the mean, sd and
##            standard error of the mean for a numeric column.
##            [There exists a function 'summary()', but it returns
##             Min., 1st Qu., Median, Mean, 3rd Qu., and Max.]
##
         smry1 <- function(x) {                  # Just one argument 'x'
             m <- mean(x)                        # Body of the function
             s <- sd(x)                          #        "
             se <- s / sqrt(length(x))           #        "
             c("mean"=m, "sdev"=s, "stderr"=se)  #        "
         }                                       # The last expression is the result returned.
##
##   Applications:
         smry1(StudentHeights)
         apply(phillyTemp.mat, 2, smry1)
         sapply(Salary.df[,-3], smry1)    # Column 3 is categorical ('gender').
##
## - A shorter way of coding the same function is as follows:
         smry2 <- function(x) { c(mean=mean(x), sdev=sd(x), stderr=sd(x)/sqrt(length(x)) ) }
         smry2(StudentHeights)
##     Its disadvantage is that it computes 'sd(x)' twice.
##
## - A more elaborate version deals with missing values:
         smry3 <- function(x, na.rm=T, dig=3) {                       # Arguments
             m <- mean(x, na.rm=na.rm)                                # Body
             s <- sd(x, na.rm=na.rm)                                  #  "
             se <- s / sqrt(sum(!is.na(x)))                           #  "  ; proper divisor!
             result <- round(c("mean"=m, "sdev"=s, "stderr"=se), dig) #  "
             result                                                   #  "  ; result returned
         }
         smry3(StudentHeights)
##   This version illustrates the use of default values for arguments:
##   The argument 'na.rm' is given the default value TRUE.  If this is what
##   we want, we don't need to set this argument when we call this function.
##
##   [Background: The functions 'mean()' and 'sd()' have also arguments
##    'na.rm', and their default values are FALSE, meaning that NAs are
##    not removed and NA is returned instead.  See their 'help()'.
##    Our function 'smry()' changes the default to TRUE and passes its
##    own 'na.rm' argument on to the functions 'mean()' and 'sd()'.]
##
          smry3(c(NA,1:10))
##
## - Generalities: Structure of a function
##
##    -------------------------------------------------------------------------
##   |                                                                         |
##   |      smry3 <- function(x, na.rm=T, dig=3) {             # Arguments     |
##   |          m <- mean(x, na.rm=na.rm)                      # Body          |
##   |          s <- sd(x, na.rm=na.rm)                        #  "            |
##   |          se <- s / sqrt(sum(!is.na(x)))                 #  "            |
##   |          round(c("mean"=m, "sdev"=s, "stderr"=se), dig) #  "  ; result  |
##   |      }                                                                  |
##   |                                                                         |
##   |  - Arguments can be given default values, as in 'na.rm=T' and 'dig=3'.  |
##   |    In a function call these arguments need to be used only if another   |
##   |    value than the default is needed.                                    |
##   |                                                                         |
##   |  - Arguments without default values must be given in a function call.   |
##   |                                                                         |
##   |  - Inside the body a temporary namespace is set up during the           |
##   |    execution of the function.  It contains:                             |
##   |    (1) the argument symbols assigned to COPIES                          |
##   |        of the data structures shown in the                              |
##   |        function call, and                                               |
##   |    (2) symbols assigned during the execution of                         |
##   |        the body of the function.                                        |
##   |                                                                         |
##   |  - As a matter of good programming style, DO NOT USE symbols            |
##   |    that are outside in the global environment                           |
##   |    EXCEPTION: Functions that are contained in the standard              |
##   |               namespaces such as "package:base".                        |
##   |                                                                         |
##   |  - The result of a function is the last expression in the body          |
##   |    just as in any '{...}' expression.                                   |
##   |                                                                         |
##    -------------------------------------------------------------------------
##
##   To be clear about the penultimate point: All symbols are
##   accessible to the function body; if a symbol is not found
##   among the arguments or locally defined symbols, it will be
##   looked up in all namespaces shown in 'search()'.
##   Yet, it is not wise to make a function dependent on changing
##   values of an external symbol, as in the following example:
         fun <- function(x) { x + y }
         y <- 1       # 'y' defined in the global namespace
         fun(2)       # 'x' is set to 2 and 'y' is found to be 1.
         y <- 11
         fun(2)       # 'x' is set to 2 and 'y' is found to be 11.
         rm(y)
         fun(2)       # 'x' is set to 2 and 'y' is non-existent.
##   Such functions are unpredictable in their behaviors.
##
## - One can check whether a symbol is pointing to a function as follows:
         is.function(smry2)
         class(smry2)
##
## - Bodies of functions do NOT modify objects outside the function!
         x <- 1:3
         fun <- function(x) { x[2] <- 100 }   # Does nothing!
         fun(x)
##    To affect the outside world, the result of a function needs
##    to be assigned:
         x <- 1:3
         fun <- function(x) { x[2] <- 100; x }   # Returns 'x'
         fun(x)
         x <- fun(x)                             # This modifies 'x'.
##
## - Functions are objects just like data structures.
##   One can collect them in lists:
         myFuns <- list(smry1, smry2)
         myFuns
         myFuns[[2]]
##   One can apply them as such:
         myFuns[[2]](StudentHeights)
##   If a function is used just once, one may not want to assign a symbol:
         apply(phillyTemp.mat, 2,
               function(x) { c(mean=mean(x), sdev=sd(x), stderr=sd(x)/sqrt(length(x)) ) } )
##   The following is crazy but legal, and it works:
         (function(x) { c(mean=mean(x), sdev=sd(x), stderr=sd(x)/sqrt(length(x)) ) })(StudentHeights)
##        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^Function^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^  ^^^Argument^^^
##   It is the same as
         smry2(StudentHeights)
##   To understand this, you must apply the following principle:
##
##    -----------------------------------------------
##   |                                               |
##   |  PRINCIPLE OF SUBSITUTION OF IDENTICALS:      |
##   |                                               |
##   |  If two expressions return the same results,  |
##   |  they can substitute for each other in code.  |
##   |                                               |
##    -----------------------------------------------
##
         smry2
##   and
        (function(x) { c(mean=mean(x), sdev=sd(x), stderr=sd(x)/sqrt(length(x)) ) })
##   evaluate to the same function object, hence where one can
##   appears, so can the other.
##
## - In 'sapply()', 'lapply()' and 'apply()', it is common
##   to improvise little 'throw-away functions'.
##   Example:
         sapply(search(), function(ns) { length(ls(ns)) } )
##   This expression lists the number of symbols in all namespaces.
##   The next one sums them up:
         sum(sapply(search(), function(ns) { length(ls(ns)) } ))
##       [1] 2555
##   So the instructor has 2555 symbols defined in his R process.
##   Most of them are part of the R languge.  Defined by him are
##   this many symbols:
         length(ls(search()[1]))
##       [1] 152
##   [Time for cleanup...]


## * EXAMINING THE BODY OF R FUNCTIONS:
##
##   When we print a function, R shows its arguments and its body.
##   This can be useful for examining existing functions that
##   come with R.
##   Examples:
##
## - Listing symbols that have been assigned objects:
         ls
##     The code you see is really about unwrapping arguments
##     and wrapping results.
##     The actual work is done in C code where it says
##       .Internal(ls(envir, all.names, sorted))
##     We see that 'ls()' has one more argument: 'pos'.  What does it do?
         ls(pos=1)
##     Apparently the same as:
         ls(search()[1])
##
## - Length of objects:
         length
##     Here we learn nothing because the function instantly dispatches to
##     a C function 'length'.
##
## - Matrix/array looping:
         apply
##     Here we could learn a lot.  For one thing, the code is not
##     limited to matrices but seems to work for arbitrary integer
##     'dim()' vectors.
##
## - Our own function:
        smry3
##   Nice, it even includes the comments!
##
## - Try your own ...


## * ARGUMENTS '...':
##
## - Task: Write a function that works like 'unique()' and 'sort()',
##         except it does both.
         su <- function(...) { sort(unique(...)) }
##   This function will have exactly the arguments of 'unique()':
         su(c(1,2,1,2,1,2,3,1))

## - Task: Write a function that does the same as 'plot(x, y)' but
##         extends the ranges by 10% on both sides.
##
##   Actually, the function we have in mind is 'plot.default()'.
##   We will learn later about 'generic functions'.  They are
##   really dispatchers to 'methods' that do the work depending
##   on the type ('class') of the arguments.
##   Let's look at 'plot.default()':
         plot.default
##   Nice!  It has lots of code we could analyze.
##   For us of importance is the sequence of arguments:
##      function (x, y = NULL, type = "p", xlim = NULL, ylim = NULL,
##          log = "", main = NULL, sub = NULL, xlab = NULL, ylab = NULL,
##          ann = par("ann"), axes = TRUE, frame.plot = axes, panel.first = NULL,
##          panel.last = NULL, asp = NA, ...)
##   First let's write a function to compute 10% extended range:
         range.ex <- function(x, fac=1.2) { xrg <- range(x);  m <- mean(xrg);  (xrg - m)*fac + m }
##   Example:
         range.ex(0:10)
##   Next let's write a function that is like 'plot.default()',
##   but has this new default:
         plot.ex <- function(x, y, type="p", xlim = range.ex(x), ylim = range.ex(y), pch=16, ...) {
             plot.default(x, y, type=type, xlim=xlim, ylim=ylim, pch=pch, ...) }
##   Compare:
        plot(1:10, 1:10)
        plot.ex(1:10, 1:10)
        plot.ex(1:10, 1:10, type="o")                 # '...' is 'pch=16, type="o"'
        plot.ex(1:10, 1:10, type="o", xlim=c(-5,15))  # '...' is 3 last args
##   Comments:
##   . 'range.ex()' can be used to add more space around a plot:
         x <- 1:1000;  y <- sin(x)
##     default: insufficient space around plotted object
         plot(x, y, cex=.5)
         plot.ex(x, y, cex=.5)
##     stretch by 10%:
         xlim <- range.ex(x);  ylim <- range.ex(y)
         plot(x, y, xlim=xlim, ylim=ylim, pch=16, cex=.5)
##     stretch ylim by a factor of 4:
         xlim <- range.ex(x,1);  ylim <- range.ex(y,4)
         plot(x, y, xlim=xlim, ylim=ylim, pch=16, cex=.5)
##     stretch xlim by a factor of 4:
         xlim <- range.ex(x,4);  ylim <- range.ex(y,1)
         plot(x, y, xlim=xlim, ylim=ylim, pch=16, cex=.5)
##     Interesting patterns, aren't they?
##
##      ----------------------------------------------------------
##     |  Take-home message for plotting: Axis scales do matter!  |
##      ----------------------------------------------------------
##
## - Examples of functions the instructor uses all the time:
         len <- length     # laziness
         si <- save.image  #   "
##     The following two we know already:
         su <- function(...) sort(unique(...))
         range.ex <- function(x, fac=1.1) { xrg <- range(x);  m <- mean(xrg);  (xrg - m)*fac + m }
##     The next function lists all symbols of a namespace sorted by the
##       size of the assigned data in terms of bytes:
         los <- function(pos=1) sort(sapply(ls(pos=pos), function(nam) object.size(get(nam))))
##     [The default 'pos=1' means 'search()[1], i.e., the first namespace in the search path.]
##      The function is useful in tracking down large data structures that
##      are no longer used yet take up space in the memory of the R process.
         los()
##


#================================================================
##
##
## TEXT ANALYSIS AND MANIPULATION
##
##
## * REMINDER: Functions for text data we already know
##
##   - String lengths:
        nchar
##   - String editing with 'sub()' and 'gsub()':
        gsub;  sub
##   - Extract substrings:
        substring


## * TEXT EXAMPLE: Shakespeare's collected works from the Gutenberg Project
         download.file("http://www.gutenberg.org/cache/epub/100/pg100.txt",
                       destfile = "Shakespeare-Collected-Works.txt")
##     If this doesn't work, download it from Canvas > Files > Datasets
##     to your working directory:    getwd()


## * RAW EXAMINATION:
##     Get a sense of what's in the text file by reading it into
##     a text editor, such as Notepad on Windows (what is it on a Mac?).


## * READING TEXT INTO R:  'readLines()'
##     This function reads text and forms one character string per line.
##     Read just the first 20 lines:
         readLines("Shakespeare-Collected-Works.txt", n=20)
##     Some preamble text at the beginning.
##     Read the whole collected works into a string vector, one line per string:
##     --------------------------------------------------------------
         bard.lines <- readLines("Shakespeare-Collected-Works.txt")  #
##     --------------------------------------------------------------
##     How many lines?
         length(bard.lines)    # 124787;  how many lines did you get?
##     Here are the first 200 lines:
         bard.lines[1:200]
##     Turns out most of it is legal matter from the Gutenberg project.
##     Let's focus on the sonnets which make up the first part of the file.


## * TEXT SEARCH:  'grep()'
##     It appears that "     1" is the header of the first sonnet.
##     We can search for this string with 'grep()':
         grep("     1", bard.lines)
##     Oh, these are the line numbers where the string appears.
##     What are these lines?
         sel <- grep("     1", bard.lines)
         bard.lines[sel]
##     Or as a one-liner:
         bard.lines[grep("     1", bard.lines)]
##     We got matches with all sonnet numbers that start with a digit 1,
##     including: "    10",  "    11",  ...,  "    154".
##     Apparently Shakespeare wrote 154 sonnets.
##
##     [Search Wikipedia for the obscure Unix history of the name 'grep'.
##      Like 'google', the word 'grep' is also used as a verb.]


## * REGULAR EXPRESSIONS:
##
##     The problem with the search for "    1" is that it yielded
##     matches we didn't intend.
##     What we meant was "    1" at the end of a line.
##     ==> We need ways of defining text patterns that can express
##     conditions such as
##       'text at the end of a line', or
##       'text at the beginning of a line', or
##       'text filling the whole line'.
##     It turns out that the first arg to 'grep()' is not a plain
##     string but a 'regular expression' in which certain characters
##     have meanings other then themselves:
##     - If you want a string "..." to be at the beginning of the line, use
         "^..."
##     - If you want a string "..." to be at the end of the line, use
         "...$"
##     - If you want a string "..." to fill the whole line, use
         "^...$"
##     The characters '^' and '$' are 'meta-characters' that express
##     something other than themselves.
##
##     Since we are looking for a string at the end of the line, we will be using:
         grep("    1$", bard.lines)
##   There is just one such line, 182.
##   [Let the instructor know if you got something different.]


## * BACKGROUND ABOUT 'grep()':
##
##   . Plain 'grep()' returns positive integers with the positions
##     where the pattern is found.
##
##     As another example, when srolling through the text in the text
##     editor, we see that legal disclaimers start at the beginning of
##     a line with the characters "<<".  We can search for them as
##     follows:
         grep("^<<", bard.lines)
##     Apparently these disclaimers appear in over 200 places.
##
##   . Logical 'grepl()'  returns a logical vector with TRUE for the
##     positions where the pattern is found:
##     Don't do it on Shakespeare's works, though:
##     It will be a vector of 124787 TRUE/FALSE values!
##     But you can use 'which()' to get the same effect as plain 'grep()':
         which(grepl("^<<", bard.lines))
##
##   . Value 'grep()': This is plain 'grep()' but with argument 'value=T'.
##     Default is 'value=F'.  It returns the strings with the pattern matches.
##     Earlier we emulated this by first doing the selection and then indexing:
         bard.lines[grep("     1$", bard.lines)]
##     The following does the same:
         grep("     1$", bard.lines, value=T)
##     This is so useful that the instructor wanted a 'grepv()' function:
         grepv <- function(...) { grep(..., value=T) }
##     Hence:
         grepv("    1$", bard.lines)
##
##   . Here is from 'help(grep)':
##        grep(pattern, x, ignore.case = FALSE, perl = FALSE, value = FALSE,
##             fixed = FALSE, useBytes = FALSE, invert = FALSE)
##        grepl(pattern, x, ignore.case = FALSE, perl = FALSE,
##              fixed = FALSE, useBytes = FALSE)
##
##     Nice to know two additional arguments::
##     + 'ignore.case=T' asks to ignore upper/lower case differences.
##     + 'fixed=T' asks that the pattern NOT be interpreted as a
##       regular expression but as a plain string.
##
##   . The patterns "^..." and "...$" are just first examples of
##     regular expression syntax.  There is a rich regular expression
##     language for defining very general text patterns.


## * EXTRACTING A TEXT PIECE: THE BARD'S SONNETS
##
##   [See Dictionary for the meaning of 'sonnet':
##     http://dictionary.reference.com/browse/sonnet?s=t
##    ]

##   We will extract the sonnets by defining their start
##   and stop within the collected works:
##       ----------------------------------------------
         sonnets.start <- grep("     1$", bard.lines)  #
##       ----------------------------------------------
         sonnets.start              # 182
         bard.lines[sonnets.start]  # [1] "                     1"
##   This did it!
##   To be sure, print a few lines before and after:
         bard.lines[sonnets.start+(-10):10]   # sanity check
##     Next task: Where is the end of the sonnets?
##     Scroll down in your editor to the end of the
##     154th sonnet.  You'll find the words "THE END".
         grep("THE END", bard.lines)
##     ==> 38 times.  Ours is most likely the first:
         sonnets.stop <- grep("THE END", bard.lines)[1]
##     Check:
         bard.lines[sonnets.stop + (-20):20]
##     Fine; after the sonnets is the start of a play, "ALLS WELL THAT ENDS WELL".
##     We really don't want "THE END" as part of the sonnets,
##     so we'll stop one line before:
##       ----------------------------------------------------
         sonnets.stop <- grep("THE END", bard.lines)[1] - 1  #
##       ----------------------------------------------------
         sonnets.stop                # [1] 2798
##     Finally, let's get at the sonnets, using a ladder from start to end:
##       ---------------------------------------------------------
         sonnets.lines <- bard.lines[sonnets.start:sonnets.stop]  #
##       ---------------------------------------------------------
##     Examine some basics:
         length(sonnets.lines)      # 2617 lines
##     First few sonnets:
         head(sonnets.lines, 50)    # ok, first sonnet
##     Last few sonnets:
         tail(sonnets.lines, 50)    # ok, last sonnet


## * SORTING TEXT: Beginnings of style analysis
##
##     Here is an interesting exercise that gives a little hint at the
##     rhetorical devices Shakespeare used:
         sort(sonnets.lines)             # (*)
##     We find, for example, 40 lines (out of 2600+)
##     that start with the exclamation "O ...",
##     as in:
##       [1769] "  O though I love what others do abhor,"
##       [1770] "  O truant Muse what shall be thy amends,"
##       [1771] "  O what a happy title do I find,"
##
##     There are many more repeatedly used patterns for starting a new
##     line.  It isn't so that a genius poet tries to present a
##     stylistic novelty on every line.  Rather, he/she has a large
##     number of devices he/she uses repeatedly.


## * CLEANING OUT EMPTY STRINGS:
##
##     At the beginning of the sorted list (*) we find 308 empty
##     lines.  They are the dividing lines between the sonnets, two
##     per division.  Let's remove them.
##
##     We do the removal the dangerous way by self-replacement.  It
##     should not harm because doing it a second time will not change
##     anything.
##       ------------------------------------------------------
         sonnets.lines <- sonnets.lines[sonnets.lines != ""]   #
##       ------------------------------------------------------
         cbind(head(sonnets.lines, 50))   # Same as 'sonnets.lines[1:50]'
         cbind(tail(sonnets.lines, 50))
##     Looks good, except we see al these leading blanks that are
##     uninformative.


## * CLEANING OUT LEADING BLANKS: 'sub()' with a regular expression
##
##     We don't want to clean out ALL blanks; this would merge words.
##     We only want to get rid of leading blanks of any number.
##     To do this we need to know more about 'sub()' and 'gsub()':
##     They, too, allow regular expressions in the first argument.
##     That is, one can specify a text pattern to be replaced with
##     a specific fixed string (the latter not a pattern).
##     For example,
         tmp <- "  As his triumphant prize, proud of this pride,"
         sub("^ ", "", tmp)
##     removes the initial blank from the string in 'tmp'.
##     We would like to remove as many leading blanks as possible.
##     To this end we need to know one more special character for
##     regular expressions: '+'.  It, too, is a meta-character with
##     special meaning: it says to match any repetition of the
##     preceding pattern.  For example, " +" means to match " ",
##     "  ", "   ", "    ", and so on, as many contiguous blanks
##     as can be found.  The solution to removing leading blanks
##     is therefore:
         sub("^ +", "", tmp)
##     [If you wanted replace all leading blanks with one "#$%",
##     the solution would be:
         sub("^ +", "#$%", tmp)
##     ]
##     Finally, the 'string cleaning' from leading blanks:
##       --------------------------------------------------------------------------
         sonnets.lines <- sapply(sonnets.lines, function(x) { sub("^ +","",x) } )  #
##       --------------------------------------------------------------------------
         head(sonnets.lines, 50)   # Same as 'sonnets.lines[1:50]'
         tail(sonnets.lines, 50)
##     Bother, 'sapply()' turned the result into a named vector.
##     Remove the names:
##       -------------------------------------------
         sonnets.lines <- as.vector(sonnets.lines)  #
##       -------------------------------------------
         head(sonnets.lines, 50)   # Same as 'sonnets.lines[1:50]'
         tail(sonnets.lines, 50)
##     Fine.  Except:


## * CLEANING EMPTY LINES:
##
##     In the last 'tail()' expression we noticed empty lines, which
##     are a nuisance.  We remove them, again with self-modification.
##       -----------------------------------------------------
         sonnets.lines <- sonnets.lines[sonnets.lines != ""]  #
##       -----------------------------------------------------
         length(sonnets.lines)     # 2309
##     We anticipate this to be the final number of lines, including
##
         head(sonnets.lines, 50)   # Same as 'sonnets.lines[1:50]'
         tail(sonnets.lines, 50)


## * CHECKING REPETITION PATTERNS:
##
##     According to
##       http://dictionary.reference.com/browse/sonnet?s=t
##     a sonnet consists of 14 lines.
##     After cleaning we should be left with 14 lines per sonnet,
##     each preceded by a line consisting of the sonnet number (1:154).
##     We should check whether this regularity exists in 'sonnets.lines'.
##     We can go about it by checking whether the lines consisting of
##     sonnet numbers are spaced by 15 positions.
##     ==> Identify the lines that contain numbers.
##
##     To do this, we need to learn about two more features of
##     regular expressions: lists and ranges.
##
##   - In order to match any digit, we can list them in brackets:
         grepv("[0123456789]", sonnets.lines)
##     ==> Exactly the lines containing the sonnet numbers.
##     That is, Shakespeare didn't use numbers in his sonnets...
##
##   - In order to match characters in a range, use hyphens:
         grepv("[0-9]", sonnets.lines)
##
##     Other examples: Looking for rare capital letters...
         grepv("[QXY]", sonnets.lines)
##     OK, "Y" is not rare, but "Q" and "X" do not occur at all.
         grepv("[X-Z]", sonnets.lines)
##     "Z" does not occur at all.
##
##     For getting at the positions of the lines with numbers,
##     we need the raw 'grep()' version:
         grep("[0-9]", sonnets.lines)
##     Collect them:
##       ---------------------------------------------
         sonnets.num <- grep("[0-9]", sonnets.lines)  #
##       ---------------------------------------------
##     How can we check whether they are all spaced by 15 positions?
##     Use 'diff()':
         diff(sonnets.num)
##     There is just one problem: We don't have a length for the last sonnet!
##     The number 154 of the last sonnet will be before the sonnet,
##     so we don't get the length of the last.
##     This can be helped by adding one more position, just past the last line:
##       -----------------------------------------------------------------------
         sonnet.lengths <- diff(c(sonnets.num, length(sonnets.lines)+1 ) ) - 1  #
##       -----------------------------------------------------------------------
##     We also had to subtract 1 because we don't want the number lines
##     counting as lines of the sonnets.
##     Are the all lengths 14?
         sonnet.lengths
         all(sonnet.lengths == 14)
##     Ooops!  FALSE
##     A more general answer to such questions is obtained by tabulation:
         table(sonnet.lengths)
##     Look at that!  There are two violations!
##     One sonnet is of length 12, and one is of length 15.
##     Let's find them!  How?
##     Ask 'which()' sonnets have lengths != 14:
         sonnets.odd <- which(sonnet.lengths != 14)
         sonnets.odd
##     Sonnets 99 and 126!  Let's print those sonnets:
         sel <- sonnets.num[sonnets.odd[1]] + 0:16
         sonnets.lines[sel]
##     Indeed, sonnet 99 is of length 15.
##     An independent source, Cliff Notes, at
##       http://www.cliffsnotes.com/literature/s/shakespeares-sonnets/summary-and-analysis/sonnet-99
##     confirms the odd length.
##     Sonnet 126:
         sel <- sonnets.num[sonnets.odd[2]] + 0:16
         sonnets.lines[sel]
##     Sonnet 126 is indeed of length 12!  Again, Cliff Notes, at
##       http://www.cliffsnotes.com/literature/s/shakespeares-sonnets/summary-and-analysis/sonnet-126
##     confirms length 12.  Yet another source,
##       http://www.shakespeares-sonnets.com/all.php
##     (search for 126, Roman CXXVI), indicates that
##     two lines may be missing at the end.
##     Could it be that it was it unfinished?
##     Probably not -- it was the last of a series on youth,
##     so the premature ending may have meaning.
##
##     PS: The instructor was motivated to examine sonnet lengths
##     because he noted that
         length(sonnets.lines)  # 2309
##     did not agree with
         154 * (1 + 14)         # 2310
##     Where was the missing line?
##     Now we know:
##     One sonnet is too long by 1,
##     and one is too short by 2.


## * KNOWING IN WHICH SONNET A LINE IS:
##
##     Given line 253, what sonnet is it in?
##     If you need to do this just once, you can look at the preceding
##     text, no more than 14 lines back to find a sonnet number:
         sonnets.lines[253+(-14):0]
##     Ok, Line 253 is in sonnet 17.
##     Let's not be lazy, though, and construct a vector that tells
##     the sonnet number for each line.
##
##     If all 154 sonnets were of equal length, there would be no
##     problem constructing such a vector: 'rep(1:154, each=15)'
##     but this is not the case.  So we need to do something that
##     works for arbitrary sonnet lengths.
##
##     Here is a recipe that works for very general situations:
##     We are able to detect the lines where a new sonnet starts,
##     namely, lines containing a number:
##       -------------------------------------------------
         sonnets.numbers <- grep("[0-9]", sonnets.lines)  #
##       -------------------------------------------------
         sonnets.numbers
##     We see that sonnet 1 starts at 2 and ends at 15, sonnet 2
##     starts at 17 and ends at 30, ....
##     Hence the starts are at:
         sonnets.starts <- sonnets.numbers + 1
         sonnets.starts
##     and the ends are at ... well, that's more complicated because
##     the last sonnet doesn't have a next sonnet.  We need to patch
##     the end:
         sonnets.stops <- c(sonnets.numbers[-1]-1, length(sonnets.lines))
         sonnets.stops
##     You see the trick: leave out the first to shift the vector back
##     by one position, the subtract one to get the ends of the sonnets.
##
##     With these tools we can construct a vector that tells the
##     sonnet number for each line:
         sonnets.which <- rep(0, length(sonnets.lines))
         for(j in 1:length(sonnets.starts)) {
             tmp <- sonnets.starts[j]:sonnets.stops[j]
             sonnets.which[tmp] <- j
         }
         sonnets.which
##     Correct?
         cbind(sonnets.which, sonnets.lines)[1:50,]
##     Indeed.
##
##     Alternative approach: Form a dummy vector for the number
##     positions, then use 'cumsum()' to form a 'stepping vector'.
         sonnets.which.alt <- cumsum(grepl("[0-9]", sonnets.lines))
         sonnets.which.alt  # Ok, almost the same except for zeros at number lines
         sonnets.which.alt[sonnets.numbers] <- 0
##     Same as the first approach?
         all(sonnets.which.alt == sonnets.which)   # Indeed
##     Let's keep this approach as the authoritative one:
##       -------------------------------------------------------
         sonnets.which <- cumsum(grepl("[0-9]", sonnets.lines)) #
         sonnets.which[sonnets.numbers] <- 0                    #
##       -------------------------------------------------------
##
##     Now we can easily get at sonnet 101, for example:
         cbind(sonnets.lines[sonnets.which == 101])
##     It is now also easy to count how many text lines there are:
##       -------------------------------------------
         sonnets.lines.N <- sum(sonnets.which > 0)  #
##       -------------------------------------------
         sonnets.lines.N    # 2155
##     This agrees with what we know about lengths of the sonnets:
         (154-2)*14 + 12 + 15


## * STRING SPLITTING TO GET AT WORDS:  'strsplit()'
##
##     Task: Split the sonnet lines into words.
##     To this end use the function 'strsplit()'.
##     It accepts string patterns to split on.
##     The pattern we look for is a blank, " ", or
##     multiples thereof: "  ", "   ", "    ", ... ,
##     even though we would not expect them.
##     We can use the regular expression " +" as a splitter:
##     It will remove any number of contiguous blanks and break each line
##     into a vector of strings that are presumably words.
##     Using " +" to allow for multiple blanks will avoid the possibility
##     that empty words "" appear.
##       ------------------------------------------------------
         sonnets.lines.split <- strsplit(sonnets.lines, " +")  #
##       ------------------------------------------------------
##     Beware!  The function returned a list containing
##     one string vector per line:
         class(sonnets.lines.split)      # 'list'
##     The length should still be the same:
         length(sonnets.lines)
         length(sonnets.lines.split)
##     Yes, 2309 lines in each.
##     Examine the results:
         head(sonnets.lines.split, 50)
         tail(sonnets.lines.split, 50)
##     By construction we are sure that there won't be any empty words.
##     Still, let's check:
         any(sapply(sonnets.lines.split, function(x) { any(x == "") } ))   # FALSE
         sum(sapply(sonnets.lines.split, function(x) { sum(x == "") } ))   # 0
##     The second version would be more informative if there were empty words:
##     it would tell us how many.


## * CLEANING WORDS OF PUNCTUATIONS AND OTHER NON-ALPHABETIC CHARACTERS:
##
##     Most lines contain non-alphabetic characters:
         length(grep("[.,;:?!]", sonnets.lines))
##     Clean them out with 'gsub()'.
##     As we learned earlier, we can substitute text patterns with strings.
##     The pattern in terms of regular expressions is "[.,;:?!]",
##     and the replacement string is "".
##     Again we need to loop down the list 'sonnets.lines.split',
##     and again we do it with dangerous self-modification:
##       ---------------------------------------------------------------------------------------------
         sonnets.lines.split <- sapply(sonnets.lines.split, function(x) { gsub("[.,;:?!]", "", x) } ) #
##       ---------------------------------------------------------------------------------------------
         head(sonnets.lines.split, 50)
         tail(sonnets.lines.split, 50)
##     Looks good.  Are there any other non-alphabetic/non-numeric characters?
##     To find out we need to learn about yet another piece of regular expression
##     syntax:
##     - We learned that "^" can indicate the beginning of a line.
##     - However, if it is inside a bracket, it means negation:
##       'NOT any that follow in the bracket list'.
##     The regular expression for non-alphabetic/non-numeric is:
         "[^0-9a-zA-Z]"
##     It's easiest to do the search on the raw list of words,
##     obtained with 'unlist(sonnets.lines.split)':
##     We don't need to loop over it because it's a vector,
##     and 'grep()' is vectorized.  We'll use 'grepv()', though,
##     to see the words, not their positions:
         grepv("[^0-9a-zA-Z]", unlist(sonnets.lines.split))
##     Lots of apostrophes!  We can live with them, even though
##     we'd love to get rid of the possessives: "Time's", "another's",...
##     Search them specifically:  Use the pattern "'s$", where
##     "$" makes sure that we're not also catching "'st", for example.
         grepv("'s$", unlist(sonnets.lines.split))
##     So, yes, these seem to be over 200 possessives and contractions.
##     We would have to know about word meanings to tell the difference
##     between the two.  Let's just remove them, even though we may lose
##     a few contracted "has" and "is":
##       ---------------------------------------------------------------------------------------
         sonnets.lines.split <- sapply(sonnets.lines.split, function(x) { sub("'s$", "", x) } ) #
##       ---------------------------------------------------------------------------------------
##     We used 'sub()', not 'gsub()', because there will be only one possessive per word.
##     There is also the possessive form "mistress'".  Search and remove:
         grepv("'$", unlist(sonnets.lines.split))
##     No, not all possessives; some are contractions such as "Th'" for "The" and "t'" for "to".
##     We'll remove the apostrophes after terminal "s":
##       ----------------------------------------------------------------------------------------
         sonnets.lines.split <- sapply(sonnets.lines.split, function(x) { sub("s'$", "s", x) } ) #
##       ----------------------------------------------------------------------------------------
##     Looking for non-alphabetic/non-numeric again:
         grepv("[^0-9a-zA-Z]", unlist(sonnets.lines.split))
##     Still many apostrophes.  We can wipe out at least those at the
##     beginning and end of a word, as in "'i" and "that'"
##       -----------------------------------------------------------------------------------------
         sonnets.lines.split <- sapply(sonnets.lines.split, function(x) { sub("^'|'$", "", x) } ) #
##       -----------------------------------------------------------------------------------------
##     Here we used a new piece of regular expression syntax:
##     the meta-character '|' means 'or', that is,
##     the either of the two expressions create a match.
##     If you prefer, you can make sure that the sub-expressions are
##     bundled as intended by using parens '(' and ')', which are also
##     meta-characters:
##       sub("(^')|('$)", "", x)
##
##     What else?  Look for characters other than apostrophes as well:
         grepv("[^0-9a-zA-Z']", unlist(sonnets.lines.split))
##     Search parens: Regular expression "[()]"
         grepv("[()]", unlist(sonnets.lines.split))
##     Remove them, using 'gsub()' to catch multiple parens:
##       -----------------------------------------------------------------------------------------
         sonnets.lines.split <- sapply(sonnets.lines.split, function(x) { gsub("[()]", "", x) } ) #
##       -----------------------------------------------------------------------------------------
         head(sonnets.lines.split, 50)
         tail(sonnets.lines.split, 50)
##     Looks quite clean.  Check for non alphabetic/numeric/apostrophes one more time:
         grepv("[^0-9a-zA-Z']", unlist(sonnets.lines.split))
##     Dominated by hyphens, which we probably want to leave as is.


## * GETTING RID OF UPPER CASE:
##
##     When interest focuses on words, we are not interested in
##     upper/lower case.  It is natural to convert everything to lower
##     case.  There are functions 'tolower()' and 'toupper()':
         tolower(LETTERS)
##     results in 'letters'.
##       ---------------------------------------------------------------------------------
         sonnets.lines.split <- sapply(sonnets.lines.split, function(x) { tolower(x) } )  #
##       ---------------------------------------------------------------------------------
         head(sonnets.lines.split, 50)
         tail(sonnets.lines.split, 50)
##     Much harder to read now, with punctuation, possessives and upper
##     case gone.


## * STYLE ANALYSIS: First word of each line?
##
##     We loop down the list of lines and extract the first word:
##       -----------------------------------------------------------------------
         sonnets.1stWords <- sapply(sonnets.lines.split, function(x) { x[1] } ) #
##       -----------------------------------------------------------------------
##       ==> Vector of first words
##     Check:
         sonnets.1stWords      # 1st words in the order of the lines
##     It is an interesting though surreal exercise to read these first words aloud.
##     They have a rhythm of their own, and they change character from sonnet to sonnet
##
##     To get more quantitative insight, let's tabulate the 1st words,
##     but without the sonnet numbers:
##       -------------------------------------------------------------------
         sonnets.1stWords.tab <- table(sonnets.1stWords[-sonnets.numbers])  #
##       -------------------------------------------------------------------
         sonnets.1stWords.tab
##     Here the order is alphabetic.  Sort instead by frequency:
         sort(table(sonnets.1stWords))
##     ==> 242 lines start with 'And', 89 with 'But', 83 with 'That', 78 with 'To', ...
##     How many distinct 1st words are there?  Answer:
##       ----------------------------------------------------
         sonnets.1stWords.N <- length(sonnets.1stWords.tab)  #
##       ----------------------------------------------------
##     Explain to yourself why this counts the number of distinct 1st words.
         sonnets.1stWords.N     # 399 distinct 1st words
##     Compare this to the number of text lines (i.e., w/o sonnet numbers):
         sonnets.lines.N        # 2155 lines
##     So the average number of repeats of 1st words is:
         sonnets.lines.N / sonnets.1stWords.N     # ~ 5.4


## * ANALYSIS OF 1ST WORD FREQUENCIES: REDUNDANCIES
##
##   - Ideas:
##     . Is there a 80-20 rule, such as 20% of beginnings account for 80% of lines?
##     . How many beginnings are needed to account for 50% of lines?
##     Consider this:
         (154-2)*14+12+15;  sonnets.lines.N  # 2155 is the number of lines in all sonnets.
         242/2155                            # ~11% is the fraction of lines starting with 'And'
         (242+89)/2155                       # ~15% is the fraction of lines starting with 'And' or 'But'
##       ...    How many different beginnings for 50% of the lines?  ... for 80% of the lines?
##
##   - How can we accumulate the counts of most frequent 1st words in a systematic way?
##     Recall the tabulation:
         sort(sonnets.1stWords.tab)
##     We would like to cumulatively sum up the frequencies from the end.
##     ==> Reverse-sort the tabulation and sum it cumulatively!
##       -------------------------------------------------------------------------
         sonnets.1stWords.tab.csum <- cumsum(sort(sonnets.1stWords.tab, decr=T))  #
##       -------------------------------------------------------------------------
         head(sonnets.1stWords.tab.csum, 20)         # decreasing sort: ^^^^^^
##     We can transform this vector to cumulative percentages:
##       -------------------------------------------------------------------------------------------
         sonnets.1stWords.tab.cperc <- round(sonnets.1stWords.tab.csum / sonnets.lines.N * 100, 1)  #
##       -------------------------------------------------------------------------------------------
##     We rounded the percentages to one decimal for easier reading:
         head(sonnets.1stWords.tab.cperc, 20)
         tail(sonnets.1stWords.tab.cperc, 20)
##     Show the cumulative percentages of lines accounted for together with cumulative
##     percentages of 1st words (i.e., fraction of 399):
         cbind("Rank"      =seq(len=sonnets.1stWords.N),
               "Perc.1stW" =round( seq(len=sonnets.1stWords.N)/ sonnets.1stWords.N, 3),
               "Perc.Lines"=sonnets.1stWords.tab.cperc
               )[1:20,]
##     ==> 17 or 4.3% of the most frequent 1st words account for over 50% of lines.

##     How many distinct 1st words do we need to account for 80% of lines?
##     We can find out by asking: which is the first word for which
##     the cumulative percentage exceeds 80?  The answer:
         which(sonnets.1stWords.tab.cperc >= 80)[1]    # 80, by sheer coincidence
##     That's indeed 80/399 ~ 20% of distinct 1st words
##     are needed to account for 80% of line beginnings.
##     We have a perfect 80/20 rule!


## * GRAPHICAL REPRESENTATION OF REDUNDANCY IN LINE BEGINNINGS:
##
##     Represent the cumulative numbers of lines accounted for by the
##     most frequent 1st words as a curve:
##
         par(mgp=c(2.5,0.5,0))   # Magical incantation to draw axis labels closer to axes
         plot(sonnets.1stWords.tab.csum, ylim=c(0,sonnets.lines.N), type="o", pch=16, cex=.3,
              xlab="# 1st Words", ylab="# Lines Accounted For",
              main="Redundancy among First Words of Lines \n in Shakespeare's Sonnets")
         lines("x"=c(0,sonnets.1stWords.N), "y"=c(0,sonnets.lines.N), col="gray70")
##     Add the 50% and 80% points:
         for(j in c(17, 80)) {
             points(x=j, y=sonnets.1stWords.tab.csum[j], pch=16)
             lab <- paste(j," (",round(j/sonnets.1stWords.N*100,1),"%) 1st words for ",
                          sonnets.1stWords.tab.cperc[j], "% of lines", sep="")
             text(x=j, y=sonnets.1stWords.tab.csum[j], pos=4, cex=.8,
                  lab=lab )
         }
##     Explain the meaning of the diagonal line:
         text(x=sonnets.1stWords.N/20, y=sonnets.lines.N/20,
              lab="     If all 1st words appeared the same number of times...",
              cex=.7, adj=c(0,0))
##
##     Discussion:
##     . The steep slope on the left reflects the fact that few but
##       frequent 1st words account for many lines.
##     . In the top right, starting at about 150, the curve seems to ascend linearly.
##       Is there a reason?  Check this:
         sonnets.1stWords.tab.csum[150:sonnets.1stWords.N]
         sort(sonnets.1stWords.tab, decr=T)[150:sonnets.1stWords.N]
##     So the explanation is: ...


## * AGGREGATING LINES TO SONNETS:
##
##     TASK: Generate a list consisting of 154 vectors, each
##     containing the words of a sonnet.
##
##     It pays that we constructed earlier the vector 'sonnets.which'
##     to tell for each line what sonnet it is in!
##
##     Here are thinking steps for building up the code:
         j <- 101                                         # some sonnet
         sonnets.which == j                               # lines for this sonnet (TRUE/FALSE)
         sonnets.lines.split[sonnets.which == j]          # (*) words per line for this sonnet (a sub-list)
         unlist(sonnets.lines.split[sonnets.which == j])  # words per line for this sonnet (a vector)
##     The third line (*) is the one to think through:
##     . Recall that 'sonnets.lines.split' is a list containing vectors,
##       each vector containing the words of one line.
##     . Recall that lists allow the same indexing as vectors in single
##       brackets, i.e.: positive integers, negative integers, logical
##       values, and by name (if any).
##     . Important: Indexing with single brackets in lists produces sublists!
##     That's why the line (*) produces a sublist of 'sonnets.lines.split'.
##
##     Now loop j over 1:154.  We write this vector as
         su(sonnets.which)[-1]
##     For good programming style one should not hardwire constants
##     such as 154.  Instead, make sure that j runs over the
##     legitimate values of 'soonets.which' (excluding 0):
         sonnets.words <- sapply(su(sonnets.which)[-1],
                                 function(j) { unlist(sonnets.lines.split[sonnets.which == j]) } )
##     If you prefer loops, the following does the same:
         sonnets.words.alt <- list()          # Allocate an empty list
         for(j in su(sonnets.which)[-1]) {    # Extend the list for each value of 'j'
             sonnets.words.alt[[j]] <- unlist(sonnets.lines.split[sonnets.which == j])
         }
##     Are the lists the same?  Answer:
         all.equal(sonnets.words, sonnets.words.alt)   # TRUE
         rm(sonnets.words.alt)   # We only need one copy.
##
##     The result is another list:
         length(sonnets.words)
##     Here are the first and last two sonnets:
         head(sonnets.words, 2)
         tail(sonnets.words, 2)
##     Pretty strange to read!


## * PROGRAMMING REMARK: Testing equality of data structures
##
##   - To check equality of ...
##
##     . complex data structures such as lists and dataframes, use:
          all.equal(list(1:3,letters[1:2]), list(c(1,2,3),c("a","b")) )
##
##     . data structures with uniform atomic type of the elements
##       (vectors, matrices, arrays), use one of the following:
          sum(c(2,4,6) != 2*(1:3))     # 0 differences
          all(c(2,4,6) == 2*(1:3))     # TRUE
          all.equal(c(2,4,6), 2*(1:3)) # TRUE
##
##     . atomic data, use one of the following:
          "a"==letters[1];  1==1.00                       # TRUE, TRUE
          all.equal("a", letters[1]);  all.equal(1, 1.00) # TRUE, TRUE
          all.equal(pi, 3.14159)     # Now this is nice, isn't it?
##
##   - A more stringent comparison is with 'identical()', but this
##     is so stringent, that even integers and double precision numbers
##     of the same value are shown as different:
          identical(1:3, c(1,2,3))     # FALSE
##     Why?  Because:
          typeof(1:3)         # "integer"
          typeof(c(1,2,3))    # "double"
##     The difference is in the 'storage mode':
##     . An integer takes up 4 bytes.
##     . A double precision number takes up 8 bytes.


## * ANALYZING GLOBAL WORD COUNTS:
##
##   - TASK: Tabulate all words across all sonnets.
##       -----------------------------------------------------------------
         sonnets.words.tab <- sort(table(unlist(sonnets.words)), decr=T)  #
##       -----------------------------------------------------------------
##     . Recall that we got rid of the line numbers when aggregating
##       from lines to sonnets, so there are no numbers.
##     . We sorted the tabulation in decreasing order of frequencies
##       so as to place the most frequent words at the top.
##
##     Now some questions:
##
##   - How many distinct words are there?
         sonnets.words.N <- length(sonnets.words.tab)
         sonnets.words.N                       # 3140
##     At first this may seems little because the English language has
##     a very large vocabulary.  However, the total number of words in
##     all sonnets is only:
         length(unlist(sonnets.words))              # 17582
##
##   - What are the 100 most frequent words?  This is why we sorted
##     the table in decreasing order:
         cbind(rank=1:sonnets.words.N, count=sonnets.words.tab)[1:100,]
##     As expected these are the conjunctions, articles, prepositions,
##     pronouns, ...
##
##   - What is the first true content word?  I.e., a meaningful noun
##     or verb?  Scroll down from the top, and you will find:
##                       'love' !
##     It has rank 11 and appears 188 times, more than once per sonnet
##     on average.
##
##   - What is the next true content word?  You have to scroll down
##     to rank 42 with frequency 70 to find
##                       'beauty' !
##
##     So if you are asked what the bard's sonnets are about,
##     maybe not a dumb answer would be 'love and beauty'.
##
##   - What are the rare words that appear just once throughout the
##     sonnets?
         names(sonnets.words.tab[sonnets.words.tab == 1])
##     Over 1800 words make just one appearance.  However, this list
##     is not very clean: it reveals that there are words that
##     effectively appear twice, once in the singular and once in the
##     plural.


## * GREPPING THROUGH A TABULATION:
##
##     In the previous section we saw that there are related words,
##     such as singulars and plurals, and also related nouns and
##     adjectives such as 'beauty' and 'beautiful'.  How could we
##     search for 'beaut', for example, to find all beauty-related
##     words in the tabulation?  We have 'grepv()':
         grepv("beaut", names(sonnets.words.tab))
##     But now we lost the counts.  This seems to call for a function
##     'greptab()' to grep through tabulations:
         greptab <- function(pattern, tab, ...) {
             sel <- grep(pattern, names(tab), ...)
             tab[sel]
         }
##     Try:
         greptab("beaut", sonnets.words.tab)
##     Now here is an answer!  There are a total of 4 words, with the
##     now-uncommon word 'beauteous' appearing 9 times.
##
##     Similarly we can check whether there is more 'lov':
         greptab("lov", sonnets.words.tab)
##     Of course: "loving" 9 times, "loves" 8 times, "lov'st" 6 times, ...
##
##     But we also recognize the limits of automatic text search:
##     The words 'lovely' and 'loveliness' are probably more related
##     to 'beauty' than to 'love'.


## * MULTIPLE TABULATIONS WITH COMMON SETS OF CATEGORIES:
##
## - TASK: Characterize each sonnet by its words.
##
##           ("Bag-of-words" approach -- ignore syntax)
##
##     The ultimate goal is to somehow group the sonnets into natural
##     groups, or sort them in a manner other than sonnet numbers to
##     reflect similarities in content.  This is an ambitious goal,
##     and we would need much more background from 'multivariate
##     statistical analysis'.  What follows is more an outlook on what
##     technical people do with 'text corpora' than a deeply
##     meaningful analysis.
##
## - NEXT STEP: Form a so-called 'term by document matrix'
##                or  'incidence matrix'.
##
##     . Our terms will be unique words, all 3140 of them.
##     . Our documents will be the 154 sonnets.
##     . The matrix should tell for each
##          (word,sonnet) = (term,document) combination
##       how often the word appears in the sonnet.
##
##     Here is what the top left corner of the matrix should look like:
##
##                          Sonnets -->
##                      |   1    2    3    4    5  ...
##                  ----|-----------------------------
##          Words   and |   3    4    3    1    4  ...
##            |     the |   6    1    6    1    3  ...
##            |     to  |   4    2    2    4    2  ...
##            v     my  |   0    2    0    0    0  ...
##                  ... |  ...  ...  ...  ...  ... ...
##
##     Some characteristics of the incidence matrix:
##     . The matrix will be of size 3140 x 154.
##     . It will contain mostly zeros (except for the frequent words
##       shown in the top left corner).
##     . A non-zero entry will be the count of a word in a sonnet.
##
##     We will tabulate the words in each sonnet separately in order
##     to fill the respective column of the incidence matrix.
##     However, naive tabulation is going to have a problem: each
##     sonnet has its own set of words, and there will be limited
##     overlap between them.
##
##     The goal should therefore be to force the tabulations of the to
##     have all the same categories, namely, all the 3140 words that
##     appear across the sonnets.  As mentioned, most words will have
##     a count of zero in each sonnet.
##
##
## - PRELIMINARIES in R Programming: 'factor()'
##
##     To execute the plan, we will need the function 'factor()' which
##     the instructor has been avoiding so far.  Its purpose is to
##     tell what the possible categories are in a categorical
##     variable.  The issue is that sometimes a categorical variable
##     could in principle take on values such as "mother", "father",
##     "child", but in a given dataset or sub-dataset there might be
##     no "child".  One would want to keep "child" as a category with
##     a zero count, indicating that in principle it is possible to
##     observe a child, but in this particular table no child has been
##     observed.
##
##     Development of the idea by example:
         factor(c("mother","father","mother","mother","father"))
##     This prints a little like a string vector without the quotes,
##     but it also lists the 'Levels', i.e., the possible values.
##
##     Because we haven't told 'factor()' that there is one more
##     possible category, "child", it assumes that the observed
##     categories/levels are all there is.
##
##     In order to set the levels, we need to provide one more
##     argument: 'levels=...'
         tmp.f <- factor(c("mother","father","mother","mother","father"),
                         levels=c("mother","father","child"))
         tmp.f
##     This time the function expresses the fact that this is a vector
##     that could take on values "mother", "father" and "child".
##
##     The whole purpose is really tabulating:
         table(tmp.f)
##     Nice!  It shows there are 0 children in this vector.
##
##     As mentioned, the data structure 'factor' is messy because it
##     looks sometimes like a string vector and sometimes like an
##     integer vector (it stores the observations as integers which
##     indicate the position in the vector of levels).  We therefore
##     use 'factor()' merely as an intermediate step to get us to the
##     tabulation with the desired set of 'levels'.  We can package
##     this operation in a function:
         table.l <- function(x, levels=sort(unique(x))) {
             table(factor(x, levels=levels))  }
##     [Question: What are the meanings of 'level' each time?]
##     Usage:
         table.l(c("mother","father","mother","mother","father"),
                 levels=c("mother","father","child"))
##
##
## - TERM-BY-DOCUMENT/INCIDENCE MATRICES:
##
##   . In order to create the incidence matrix 'words by sonnets',
##     we will loop over the sonnets as packaged by 'sonnets.words'.
##     Recall this is a list, the elements being the vector of words
##     in a sonnet:
         str(sonnets.words)
##
##     We can loop over 'sonnets.words' and tabulate the words of each
##     sonnet, using 'names(sonnets.words.tab)' as the levels.
##     Recall that 'names(sonnets.words.tab)' contains exactly the
##     unique words of all the sonnets:
##       -------------------------------------------------
         sonnets.words.unique <- names(sonnets.words.tab) #
##       -------------------------------------------------
##     For each sonnet (word vector in 'sonnets.words'), we will generate
##     a tabulation with levels in 'sonnets.words.unique'.
##     So all these tabulations will essentially be integer frequency vectors
##     of the same length, namely:
         length(sonnets.words.unique)    # 3140 unique words across all sonnets
##     Here is the incidence matrix:
##       -----------------------------------------------------------------------------------
         sonnets.incMat <- sapply(sonnets.words,                                            #
                                  function(x) { table.l(x, levels=sonnets.words.unique) } ) #
##       -----------------------------------------------------------------------------------
##     [Remark on 'sapply()': If the function in the second argument returns
##      vectors of the same length, they are returned in a matrix.]
##
##     Examine basics of the incidence matrix:
         class(sonnets.incMat)
         dim(sonnets.incMat)   # [1] 3140  154
         sonnets.incMat[1:20,1:20]
##     Again: The rows correspond to the 'terms', here: words;
##            the columns correspond to the 'documents', here: sonnets.
##     As we intended: We got a matrix of the size we expected;
##                     number of words = 3140, number of sonnets = 154.
##
##     [If you prefer 'for' loops to construct the incidence matrix, here is how:
         sonnets.incMat.alt <- matrix(0,      # Allocate an empty matrix.
                                      nrow=length(sonnets.words.unique), # num. of words
                                      ncol=length(sonnets.words) )       # num. of sonnets
         rownames(sonnets.incMat.alt) <- sonnets.words.unique
         for(j in 1:length(sonnets.words)) {  # Fill the matrix column by column.
             sonnets.incMat.alt[,j] <- table.l(sonnets.words[[j]], levels=sonnets.words.unique)
         }
##      We got the same matrix indeed:
         all.equal(sonnets.incMat, sonnets.incMat.alt)   # TRUE
         rm(sonnets.incMat.alt)                          # We only need one matrix.
##     ]
##     After this exercise it should be clear that 'sapply()' generally makes
##     slicker code than a 'for' loop.  For one thing, there is no need to
##     pre-allocate a carefully sized and named data structure for the results.
##
##   . Check: Does the incidence matrix contain mostly zeros?
         sum(sonnets.incMat == 0) / length(sonnets.incMat)
##     Indeed: 97.44% zeros, which is typical for incidence matrices.
##
##   . Q: What are incidence matrices good for?
##     A: They are used to compute 'distance matrices, 'networks' and 'clusterings'
##        (whatever that means, see next).
##
##
## - DISTANCE MATRICES
##
##   . We can calculate a 'distance' for each pair 'i' and 'j' of
##     sonnets by using the formula
##       d(i,j) = sqrt((freq1i-freq1j)^2 + (freq2i-freq2j)^2 + ... )   # sum of 3140 squares
         i <- 10;  j <- 12   # example of two sonnets
         sqrt(sum((sonnets.incMat[,i] - sonnets.incMat[,j])^2))
##     Ok, sonnets 10 and 12 have a distance of about 20.76.
##     What about another pair?
         i <- 10;  j <- 110   # two sonnets
         sqrt(sum((sonnets.incMat[,i] - sonnets.incMat[,j])^2))
##     This distance is about 18.92.
##     ==> Sonnet 10 is closer to sonnet 110 than it is to sonnet 12,
##         at least by the lights of this distance measure.
##
##   . Going one step further, we can collect all possible
##     distances between pairs of sonnets in a 154 x 154 matrix:
         sonnets.dists <- dist(t(sonnets.incMat))
##     'dist()' wants to compute distances between rows,
##     which is why we had to transpose 'sonnets.incMat'.
##     'sonnets.dists' is in principle a matrix, but not quite:
##     it is a special data structure that stores only one
##     triangle of the matrix, taking advantage of symmetry:
##        d(i,j)==d(j,i)
##     [See 'help(dist)' for details.]
##     However, the 'dist' structure is easily coerced to a plain matrix:
         round(as.matrix(sonnets.dists)[1:5,1:5], 1)
##     These are all pairwise distances between the first 5 sonnets.
##     Does, e.g., the distance between sonnets 1 and 2 agree with our formula?
##     Check:
         i <- 1;  j <- 2   # two sonnets
         sqrt(sum((sonnets.incMat[,i] - sonnets.incMat[,j])^2))
         as.matrix(sonnets.dists)[i,j]
##     Indeed!  [For math folks: These are 'Euclidean' distances.]
##
##   . Compare this to the table offered in the first few pages of the
##     Rand McNally Road Atlas: A matrix that shows all pairwise
##     distances between cities in the US.  So we just computed a Rand
##     McNally ditance table for the sonnets!
##
##
## - CLUSTERING BASED ON DISTANCE MATRICES:
##
##   . The next step is to use this distance matrix for 'clustering',
##     i.e., forming groups of sonnets.
         sonnets.hclust <- hclust(sonnets.dists, method="ave")
##     We could find out what this 'hclust' data structure looks like,
##     but we don't need to.  The 'plot()' function knows how to plot it:
         plot(sonnets.hclust)
         plot(sonnets.hclust, cex=.6, xlab="Sonnets")
##     This is not easily examined!  Stretch the plot window as much as you can...
##
##   . Better to turn the plot into a PDF file for zooming in Acrobat Reader:
         pdf("sonnets-clustered.pdf", height=5, width=10)
         plot(sonnets.hclust, cex=.5, xlab="Sonnets")
         dev.off()
##     Open this file in Acrobat Reader or Foxit (whatever your PDF
##     reader is) and zoom in and look around.  This is a so-called
##     'hierarchical clustering tree'.
##
##   . Interpretation of the tree plot:
##       Imagine walking from one sonnet to another in the tree:
##       up-up...-down-down...
##       If you need to climb high in the tree, the two sonnets
##       are far from each other.
##     Now try to make sense of some of the sonnet pairs:
##       If two sonnets are near in numbering and close in the tree,
##       then the tree probably reflects something real about the
##       sonnets.
##
## - Some possibilities for future exploration:
##   . Many people would experiment with subsets of words
##     to form distances.  For one thing, one might want
##     to remove non-content words, or the opposite,
##     only include relational/non-content words for style.
##   . One may also want to play with the choice of distance:
##     Would a L1 distance produce more interpretable results
##     than Euclidean L2 distance?
##   . Finally, both 'hclust()' and 'cmdscale()' have method choices.
##     For example, 'cmdscale()' can generate 3-D or 4-D or 5-D maps...
##     And 'hclust()' has different ways of building hierarchical trees.


## - DIMENSION REDUCTION BASED ON DISTANCE MATRICES:
##
##   . Here is another method that gets often applied: It tries to
##     reconstruct a map from the 'RandMcNally distance chart':
##     multi-dimensional scaling.  It produces two coordinates for
##     each sonnet which can be thought of as forming a 'map'.
##     Use the function 'cmdscale':
         sonnets.mds <- cmdscale(sonnets.dists)
         plot(sonnets.mds, pch=16)
         plot(sonnets.mds, type="n")
         text(sonnets.mds, lab=1:nrow(sonnets.mds))
##     Again, one would have to start looking into individual sonnets
##     to check what causes the map to look the way it does.
##
##
## - (DIMENSION REDUCTION)/MAPPING AND CLUSTERING OF GEOGRAPHY:
##
##   . While the 'map' of sonnets leaves us wondering and would
##     require a lot more knowledge about the sonnets to make sense of
##     both the clustering tree and the map, here is an illustration
##     to show that 'cmdscale()' can indeed recreate a map if this is
##     what is underlying the data.  To this end, we download
##     longitude and latitude data for over 300 metropolitan areas of
##     the US:
         metro <- read.csv("http://stat.wharton.upenn.edu/~buja/STAT-470-503/metro-coordinates.csv", as.is=T)
         str(metro)
         plot(metro, pch=16)
##     Now compute a 'RandMcNally table' of all pairwise distances:
         metro.dists <- dist(metro)
         round(as.matrix(metro.dists)[1:4, 1:4],1)
         metro.map <- cmdscale(metro.dists)
         plot(metro.map, pch=16)
##     ==> 'cmdscale()' is clearly able to reconstruct a map from distance data.
##         The map may be flipped or rotated, but it will reflect the true distances.
##         This example is 'clean': there is little randomness and distortion and the map is
##         2-D, so there is no 'dimension reduction', just reconstruction of a 2-D map.
##
##   . What would a clustering tree look like?
         plot(hclust(metro.dists, method="single"), cex=.5, xlab="", sub="", main="Metropolitan Areas")
##     Need a PDF version for zooming:
         pdf("metro-clust.pdf", width=10, height=5)
         plot(hclust(metro.dists, method="single"), cex=.2, xlab="", sub="", main="Metropolitan Areas")
         dev.off()
##     Open in Adobe Acrobat or Foxit Reader; then zoom and pan around:
##       zooming:  'ctrl-=' (below '+') and 'ctrl--' (below underscore '_')
##       panning:  'depress the mouse and drag' for panning, or use arrow keys.
##     The groups make much sense: Pacific Northwest, California, adjacent Nevada, ...
##     Keep in mind that horizontal distance in the clustering tree is not relevant;
##     two adjacent places may be far from each other if one has to climb high
##     in the tree to join the two places.


#================================================================


## SUMMARY: STRING SEARCH/SUBSTITUTION/SPLITTING WITH REGULAR EXPRESSIONS


## * PRELIMINARIES ABOUT SPECIAL CHARACTERS:
##
## - R and many other programming languages use the backslash '\' as a
##   meta-character in strings in order to denote special characters.
##   Common examples:
         "\t";  nchar("\t")   # TAB  (one of the white space characters)
         "\n";  nchar("\n")   # NEWLINE
         "\r";  nchar("\r")   # CR (carriage return; used in Linux/MacOS)
##   The 'nchar()' statements prove that these strings indeed contain
##   one, not two, characters.

## - One can use these characters in 'grep()' searches:
         x <- c("What's going on?", "Not much.\n")
         grepv("\n", x)
##   In the following example the words in the first string are TAB
##   separated.  'gsub()' replaces them with single blanks:
         gsub("\t", " ", c("What's	going	on?", "Not	much.\n"))
##
## - Question: How can one put '\' itself in a string?  Answer:
         "\\";  nchar("\\")
##
## - Consequences:
##   . Wherever a single backslash appears in a string, it is a
##     meta-character that modifies the next character.
##   . Wherever a double backslash appears in a string, it is a
##     single literal backslash.


## * PRELIMINARIES ABOUT FORMATTED PRINTING:
##
## - Unformatted printing:
##
##   We use the function 'print()' implicitly a lot:
##   Every time we type an expression such as
         "  abc\n  xyz\n"
##   we really do this:
         print("  abc\n  xyz\n")
##   This is called 'unformatted' printing;
##   the result is printed as a string value,
##   showing all the characters.
##
## - Formatted printing:
##
##   . If "\n" is intended to be printed as moving to a new line,
##     use 'cat()' instead of 'print()':
         cat("  abc\n  xyz\n")
##
##   . 'cat()' takes vector arguments and prints them as if they
##     had been pasted together:
         cat("    -------------------\n   |  Here is my box!  |    \n    -------------------\n")
         txt <- c("    -------------------\n",
                  "   |  Here is my box!  |    \n",
                  "    -------------------\n")
         cat(txt)
         cat(txt, sep="")
##     'cat()' separate elements of a vector by default with one blank " ".
##     With 'sep=""' we suppress this separation.
##
##
##   . Sonnet 1:
         print(sonnets.lines[1:15])         # Unformatted string values
         cat(sonnets.lines[1:15])           # Not what we need.
         cat(sonnets.lines[1:15], fill=T)   # Breaks lines at line width of the Concole:
         options()$width                    # Line width in Console
##     To achieve a visually pleasing result with 'cat()',
##     we need to paste "\n" to the end of the lines.
##     This is best done using "\n" as a separator:
         cat(sonnets.lines[1:15], sep="\n")
##
##   . 'cat()' is the way to print readable messages in functions:
         fun <- function(x) {
             if(!is.numeric(x)) { cat("fun(): Non-numeric argument!\n"); return() }
             if(any(x==0))      { cat("fun(): Zero elements!\n");        return() }
             1/x
         }
         fun("abc")
         fun(c(-2,0,2))
         fun(c(-2,2))


## * REGULAR EXPRESSIONS:
##
## - Purpose: Describing string patterns for search, substitution, and
##   string splitting.
##
## - Regular expressions look like strings but some of the characters
##   have special meanings, so-called 'meta-characters'.
##
## - The fundamental concepts are "pattern" and "match", as in:
         grepv("Jim", c("Cecilia Balducci","jim miller"," Jim Brown"))
##              ^^^                                       ^^^
##            pattern                                    match
##
##   In the absence of meta-characters (see next), a pattern has a
##   match if the pattern is a substring of the target string.
##
## - The interpretation of strings as regular expressions can be
##   suppressed if necessary.  Example:
         grepv("+?$[]*", c("-+?$[]*-","abc+?$[]*","xyz"), fixed=T) # Works: "+?$[]*" = plain string
         grepv("+?$[]*", c("-+?$[]*-","abc+?$[]*","xyz"))          # Error: invalid reg. expr.
##   Similarly, 'sub()', 'gsub()', and 'strsplit()' all have an
##   argument 'fixed=...' which is defaulted to 'FALSE' but can be set
##   to 'TRUE' to suppress the regular expression mechanism.
##
## - META-CHARACTERS with special meanings in regular expressions:
##
##       ---------------------------------------
##      |                                       |
##      |      . \ | ( ) [ ] { } ^ $ * + ?      |
##      |                                       |
##       ---------------------------------------
##
##    To use any of these characters in their literal meaning,
##    i.e., not as meta-characters, you need to preface them
##    with two backslashes or (if possible) put them in a range:
         grepv("\\.", c("is.matrix", "ls"))
         grepv("[.]", c("is.matrix", "ls"))
##
## -  CHEAT SHEET for regular expressions:     (incomplete!)
##
##       -----------------------------------------------------------
##      |                                                           |
##      |  ^     match at beginning of string [unless in a range]   |
##      |  $     match at end of string                             |
##      |                                                           |
##      |  .     matches ANY single character                       |
##      |          common mistake:  grepv(".",x)  matches anything  |
##      |          solutions:  grep("\\.",x) or grep("[.]",x)       |
##      |                                                           |
##      |  []    defines character ranges:                          |
##      |          [aA _]     matches 'a' or 'A' or ' ' or '_'      |
##      |          [a-zA-Z_]  matches any letter and underscore     |
##      |          [a-z]      matches lower case letters            |
##      |          [0-9]      matches any digit                     |
##      |          [^0-9]     matches anything other than digits    |
##      |          [.]        matches '.'                           |
##      |          ==> meta-characters are literal in ranges        |
##      |                                                           |
##      |  {}    defines multiplier for preceding pattern:          |
##      |          a{3}         matches 'aaa'                       |
##      |          a{2,3}       matches 'aa' or 'aaa'               |
##      |  *       multiplier {0,inf}                               |
##      |  +       multiplier {1,inf}                               |
##      |  ?       multiplier {0,1}                                 |
##      |                                                           |
##      |  (...) grouping for multipliers and in substitutions:     |
##      |          grep("We go up and down (and up and down)*[.]",x)|
##      |          gsub("[(]([0-9.,]+)[)]", "-\\1", x)              |
##      |          '(1,090.80)'  --->  '-1,090.80'                  |
##      |  \\n   in replacement string: copies n'th '(...)'         |
##      |                                                           |
##      |  |     match left OR right pattern:                       |
##      |          aa|bb          matches "aa" or "bb"              |
##      |                                                           |
##      |  \\<...\\>   '...' is surrounded by whitespace,           |
##      |              punctuations, beginning/end of string/line   |
##      |                                                           |
##       -----------------------------------------------------------
##
## - MATCH AT THE BEGINNING OR END: "^..." and "...$"
         x <- c("Hello, my friend!",  "How is it going?",  "Quite well, thanks.")
         grepv("^Quite ", x)                       #        ^^^^^ match
         grepv("[?]$", x)                          #  ^ match
         grepv("\\?$", x)                          #  ^ match
##
## - CHARACTER RANGES are defined by '[' and ']':
##     Look for patterned words in Shakespeare's sonnets
         grepv("^b[aeiou]+b$", sonnets.words.unique)   # None
         grepv("^b[aeiouy]+t$", sonnets.words.unique)
         cons <- "[bcdfghjklmnpqrstvwxz]"
         vow  <- "[aeiouy]"
         pat  <- paste("^", cons, vow, "+", cons, "$", sep="")
         grepv(pat, sonnets.words.unique)
         pat  <- paste("^", cons, vow, "{1,2}", cons, "$", sep="")
         pat
         mat <- grepv(pat, sonnets.words.unique)
         mat
##     How often do these words occur in the sonnets?
         table.l(unlist(sonnets.words), levels=mat)
##     [The many other words that do not appear among the 'levels' are simply ignored:
##      they generate NA values that are thrown away by 'table()'.]
##
## - REPETITION QUANTIFIERS:
         x <- c("%@#$&!", "HeLLLo!", "Hello", "HeLLo!", "Helo!", "Heo!")
##   + The preceding pattern occurs at least once or more:        '+'
         grepv("e[lL]+o", x)
##   + The preceding pattern occurs 0 or more times:              '*'
         grepv("e[lL]*o", x)
##   + The preceding pattern occurs 0 or once times but not mroe: '?'
         grepv("e[lL]?o", x)
##   + The preceding pattern occurs exactly 'n' times:            '{n}'
         grepv("e[lL]{2}o", x)
##   + The preceding pattern occurs between 'n' and 'm' times:    '{n,m}'
         grepv("e[lL]{1,2}o", x)
##   + The preceding pattern occurs 'n' or more times:            '{n,}'
         grepv("e[lL]{2,}o", x)
##   + The preceding pattern occurs no more than 'n' times:       '{0,n}'
         grepv("e[lL]{0,2}o", x)
##
## - PAREN GROUPING FOR MULTIPLIERS:
         x <- c("Now go!",
                "Go! Stop! Go! Stop!",
                "Go!",
                "Go! Go! Go! Go!",
                "Go! Stop! Go! Go!"  )
         grepv("^Go!( Go!)*$",x)  # Looking for repeats of " Go!" only.
##
## - PAREN GROUPING FOR COPYING A PATTERN IN A SUBSTITUTION:
##     Replace financial statement convention for negative numbers with math convention.
##     '(...)'  --->  '-...'   where '...' is a number pattern
         x <- c("980.41","(2,010.00)")
         gsub("[(]([0-9.,]+)[)]", "-\\1", x)
##             ^^^          ^^^ literal parens
##                 ^^^^^^^^ pattern to be copied
##
## - CONSECUTIVE CHARACTER RANGES in the lexicographical order can be
##   formed by listing the first and last, separated by a hyphen:
##     Looking for 'a' or 'b' or 'c' or 'd':
         grepv("[a-d]", c("Hello","my","friend","said"))
##     Looking for any digit:
         grepv("[0-9]", c("1. Chapter","My","friend","said"))
##     [Because these ranges depend on the 'locale-dependent' lexicographical ordering
##      of characters, there exist other symbols to define such ranges, such as
         x <- c("Abc.", "0-9", "Jim", "H?r mal auf oder es kl?pft", "?ad?nde vas")
         grepv("^[a-zA-Z ]+$", x)     # English characters and space ' ' only
         grepv("^[[:alpha:] ]+$", x)  # Locale-independent: has German 'Umlaut' -- '?','?','?'
         grepv("[[:punct:]]", x)      # Locale-independent punctuations
##     For more details see:
         help(regexp)
##
## - NEGATION OF RANGES is obtained by placing '^' at the beginning of the bracket:
##       Looking for any character that is NOT in the lower case alphabet:
         grepv("[^a-z]", c("1. Chapter","My","friend","said"))
##                          ^^^^         ^
##   ==> Note that '^' has two meanings as meta-character:
##       + At the beginning of a pattern it looks for matches at the
##         beginning of the target strings.
##       + At the beginning of a bracket range, it looks for anything
##         other than what is thereafter listed in the range.
##
## - ANY SINGLE character is matched by ".":
         grepv("a.b", c("aaaaXb","za;bqr","abcxyz"))
##                          ^^^    ^^^
##     Common mistake: Looking for literal '.' and writing "."
##     Example: searching for all 'is.abc' functions
         apropos("^is.")   # Wrong
         apropos("^is[.]") # Correct
##


## * FUNCTIONS THAT USE REGULAR EXPRESSIONS:
##
## - Text processing functions:
         grep(),
         grepl()
         sub()
         gsub()
         strsplit()
##
## - Searching for R functions (and data structures):
         apropos("is[.]")    # all type checking functions that produce TRUE/FALSE
         apropos("as[.]")    # all type coercion functions
         ls(pattern="^Student")
         ls(pat="^Student")  # Named argument needs only be long enough to be unique.
##
## - Our own handy functions:
         grepv     # Grep that returns matched strings
         greptab   # Grep through names of a tabulation
##     Here are two missing functions:
         getpat  <- function(pattern, x, invert=FALSE) { regmatches(x, regexpr(pattern, x),  invert) }
         ggetpat <- function(pattern, x, invert=FALSE) { regmatches(x, gregexpr(pattern, x), invert) }
         save.image()     # Make sure you'll have them next time.
##     They return the pattern-matched substrings:
         x <- c("Andy, Bert", "Jim, Clara.", "Cindy, Randy", "foobar.")
         getpat("[A-Z][a-z]*ndy", x)    # Returns the first matched substring (if any) ---> vector
         ggetpat("[A-Z][a-z]*ndy", x)   # Returns all matched substrings               ---> list
         ggetpat("[[:punct:] ]", x, invert=T) # Invert the pattern: 'all but punctuations'
         x <- c("Abc.", "0-9", "Jim", "H?r mal auf oder es kl?pft", "?ad?nde vas")
         getpat("^[a-zA-Z ]+$", x)     # English characters and space ' '
         getpat("^[[:alpha:] ]+$", x)  # Locale-independent: has German 'Umlaut' -- '?','?','?'
         getpat("[[:punct:]]", x)      # Locale-independent punctuations
##     Two uses of these functions:
##     . Debugging your regular expressions!
##       They show exactly what it is that was being matched.
##     . Extracting useful information from documents,
##       in particular webpages.


## * SCRUBBING AN HTML WEBPAGE -- AND LEARNING SOME HTML ON THE SIDE
##
## - EXAMPLE OF A WEBPAGE:
##     Individual webpages whose content is available in HTML markup
##     are easily processed (if they use Javascript, it's more complicated).
##     Load, for example, the instructor's webpage into a string vector:
         webpage <- readLines("http://stat.wharton.upenn.edu/~buja/")
         length(webpage)
         webpage[1:20]
##     It is in pure and extremely simple HTML format.
##     [The instructor hand-edits his webpage.  Most people use
##     web tools to construct fancy webpages.]
##
## - PURPOSE OF HTML MARKUP: Directing the appearance of the page
##     content.  E.g.: what to print bold or italic, where to place a
##     ruler, a title, a bullet list, an image, an anchor to another
##     webpage, ...

## - TASK: Remove all HTML markup, leaving pure text behind.
##
## - SYNTAX OF HTML MARKUP:
##     It is all of the form "<...>", except for comments that start
##     with "<!--" and end with "-->".

## - POTENTIAL DIFFICULTY:
##     It can be that markup crosses lines, hence we should turn the
##     webpage into a single giant string:
         webpage1 <- paste(webpage, collapse="\n")
##     Here is the full text of the webpage:
         cat(webpage1)
##
## - BUILDING UP A REGEXP TO REMOVE ALL HTML MARKUP:
##
##   . We'll build up the regular expression in steps till it catches
##     exactly HTML markups, using 'ggetpat()' so see what is being
##     matched.  This way we'll learn some rudiments of HTML markup
##     along the way.
##
##   . Check the appearances of the angles "<" and ">":
         ggetpat("<", webpage1)
         ggetpat(">", webpage1)
##     Ok
##
##   . In a next step, let's ask for all the markups
##     that contain just one character between the angles:
         ggetpat("<.>", webpage1)
##     Makes sense.  We learn some simple markups that
##       <p>   starts a new paragraph
##       <i>   starts italicized text
##       <b>   starts bold text
##
##   . Now allow multiple characters inbetween "<" and ">":
         ggetpat("<.*>", webpage1)
##     Ooops, this didn't go well!  What happened was that
##     ".*" allows ANY character, including ">", hence the
##     pattern ".*" matches through to the rest of the string,
##     (which is all of the webpage).
##
##   . So we must replace ".*" with something that prevents matches of ">".
##     Here is how:  "[^>]"  matches any single character that is not ">".
##     To match an arbitrary number of them, let's use "+" to ask for
##     at least one non-">" character (there is no "<>" HTML markup):
         ggetpat("<[^>]+>", webpage1)
##     Pretty good, but hard to read.  The problem is that 'print()'
##     allocates space of equal length for each string, which is
##     the maximum string lenght.  Use 'cat()' instead, placing
##     each items on its own line:
         cat(unlist(ggetpat("<[^>]+>", webpage1)), sep="\n")
##     [Let's make this a function because we're going to use it again:
         catn <- function(x) { cat(x, sep="\n") }
         catn(unlist(ggetpat("<[^>]+>", webpage1)))
##
##   . BASIC HTML:
##     We find, e.g., the markups starting with "</"
##     which terminate their 'unslashed' siblings:
##       </b>   ends bold
##       </i>   ends italicized
##     Important are the following:
##       <a ...>  starts an 'anchor', i.e., a clickable piece of text which,
##                when clicked, will open up a new webpage at the URL specified in '...'.
##       </a>     ends the anchor's clickable text.
##     Miscellaneous others:
##       <ul>       start unnumbered bullet list
##       <li>       start bullet item
##       </li>      end bullet item (often missing)
##       </ul>      end unnumbered bullet list
##       <hr>       place horizontal ruler (line across the page) here
##       <br>       line break (i.e., new line, but no extra space, unlike <p>)
##       <img ...>  place image here
##       <font ...> change font size
##       </font>    end font size
##       <h1>       start header/title (level 1)
##       </h1>      end header/title (level 1)
##
##   . HTML COMMENTS: Three possibilities
##     1. Leave them including markups;
##     2. Leave commented text but remove the markups;
##     3. Wipe out commented text and their markup.
##     We might just want to go with 1.  Commented text might be
##     of interest, but we want to know it's commented, so we
##     need the markup.
##     All we need to do is avoid "<!":
         catn(unlist(ggetpat("<[^!>][^>]*>", webpage1)))
##                      ^^^^^    ^
##     Note we switched from "+" to "*" because "[^!]" makes sure we
##     already have at least one character after "<".
##
##   . REMOVING HTML MARKUP:
         webpage1.nomarkup <- gsub("<[^!>][^>]*>", "", webpage1)
         cat(webpage1.nomarkup)
##
##    . Remove blank lines:
        sel <- !grepl("^[[:blank:]]*$", webpage.nomarkup)
        webpage.clean <- webpage.nomarkup[sel]
        webpage.clean
##
##    . FINAL NOTE: This exercise would be more exciting if we could
##       download all Wharton profs' webpages and make comparisons
##       between them.  Tools for such 'web crawling' do exist.
##
## - Another example:  http://x-rates.com/
##
##   . Examine this page by hitting 'ctrl-U' in the browser.
##     A new window should appear with the HTML markup and Javascript code.
##
##   . Or you can literally 'Save' it (crtl-S) to a local file
##     and study its structure in an editor such as 'Notepad' (on MS Windows).
##     [You will also find a new directory of the same name with images
##      and formatting files, which you can ignore.]
##
##   . As before we read the webpage into a string vector:
       exch <- readLines("http://x-rates.com/")
##     Search for something we recognize in the webpage,
##     e.g., the conversion rate of USD to GBP:
##     It turns out that the line with this info is very long and that
##     the relevant info is imbedded in the following markup:
##        <a href='/graph/?from=USD&amp;to=GBP'>0.64849
##     So we actually don't want to clean out the markup!
##     Rather, it helps us search for the info:
         exch <- readLines("http://x-rates.com/")      # get the webpage
         exch.info <- grepv("from=USD", exch)[1]       # get the relevant line
         exch.info
         exch.vec <- ggetpat("from=[A-Z]{3}|to=[A-Z]{3}|([0-9]+[.][0-9]+)", exch.info)[[1]] # USD->GBP is first
         exch.vec
##
##   . Let's package the information in a matrix:
       exch.vec3 <- matrix(exch.vec, ncol=3, byrow=T)                 # Reformat the vector as a matrix with 3 columns
       exch.vec3                                                      # Ok
       exch.cur <- unique(unlist(ggetpat("[A-Z]{3}", exch.vec)))
       exch.cur
       exch.mat <- matrix(1, nrow=length(exch.cur), ncol=length(exch.cur))  # Allocate a 5 x 5 matrix
       rownames(exch.mat) <- paste("from",exch.cur,sep="=")                 # 'from' currencies in the rows
       colnames(exch.mat) <- paste("to",  exch.cur,sep="=")                 # 'to'   currencies in the cols
       for(i in 1:nrow(exch.vec3)) {
           exch.mat[exch.vec3[i,1], exch.vec3[i,2]] <- as.numeric(exch.vec3[i,3])  # Fill the matrix
       }
       exch.mat
##     Looks correct!

##     Let's write a realtime monitor of the exchange rate USD --> GBP:
       repeat{
           exch <- readLines("http://x-rates.com/")      # get the webpage
           exch.info <- grepv("from=USD", exch)[1]       # get the relevant line
           info <- ggetpat("from=[A-Z]{3}|to=[A-Z]{3}|([0-9]+[.][0-9]+)", exch.info)[[1]][1:3] # USD->GBP is first
           time <- as.character(Sys.time())              # real-time
           cat(time," -- ",info,"\n")                    # print formatted
           Sys.sleep(1)                                  # snooze for a second
       }
##     The exchange rate wobbles on occasion in the 5th decimal...
##     Abort with 'ESC' in RStudio.


## * FURTHER STEPS TOWARD TEXT ANALYSIS:
##
## - The package 'stringr'  (a more systematic set of string search tools)
##
## - The package 'tm'       (very high-level 'text mining' tool)
##
## - The package 'xml'      (for XML, which is a web markup standard from which one can often extract tables)
##
## - Reference book on web scraping, with background on HTML, XML, AJAX, JSON, ...:
##
##     "Automated Data Collection with R: A Practical Guide to Web Scraping and Text Mining"
##      by Munzert, Simon
##
## - If you need to convert formats such as PDF to plain text,
##   you might have to buy a commercial product.  Individual
##   files are easily converted via Acrobat or Foxit Reader,
##   large numbers of PDF files call for a batch processing tool.
##
## - If your text sources are images, you will need an 'OCR' tool
##   ('optical character recognition').  Such tools naturally tend
##   to be not 100% reliable.  Again, individual files are easily processed:
##   Print 'jpg' images to PDF, then use the OCR tool in the PDF reader.
##   For large numbers of images, one would need a batch processing tool.
##
## - Other formats such as MS Word are tricky because MS Word has so
##   many versions.  Individual files are easily saved from MS Word as
##   txt files, though.  There may exist commercial tools for batch
##   processing.


#================================================================
##
##
## R PROGRAMMING: OTHER LOOPING CONSTRUCTS -- 'repeat' and 'while'
##
##
## * There are two more looping constructs which one uses when the
##   number of iterations can not be determined at the beginning.
##   This occurs in numerical algorithms where stepwise improvement is
##   carried out to approximate an exact solution to a problem, and it
##   is not known how many steps will be needed to achieve a certain
##   precision.
##
## * Here is a toy example: How many terms in the divergent series
##   sum_{k=1,2,...} 1/k are needed exceed a given value 'x'?
##
## - Here is a solution with a 'while' loop:
         x <- 10
         s <- 0                # initialization of sum
         k <- 0                # initialization of counter
         while(s < x) {        # <<<< contains the looping condition
             k <- k+1          # increment counter
             s <- s + 1/k      # increase sum
             if(k %% 1000 == 0) { cat(k," ") }   # (Say something every so often...)
         }                     # end of the 'while' loop
         print(k)              # result
##
##   Here an alternative with a 'repeat' loop:
         x <- 10
         s <- 0                # initialization of sum
         k <- 0                # initialization of counter
         repeat{                   # <<<<
             k <- k+1              # increment counter
             s <- s + 1/k          # increment sum
             if(s >= x) { break }  # The way to end a 'repeat' look
             if(k %% 1000 == 0) { cat(k," ") }   # (Say something every so often...)
         }
         print(k)
##
##   [Warning: Don't try much higher than 10!  It will not get there in your life time...]


##================================================================
##
##
## R PROGRAMMING: CLASSES AND GENERIC FUNCTIONS
##
## * R has an object-oriented system of classes and generic functions.
##   What this means will be explained here
##
## - We referred several times to the fact that the 'print()' and
##   'plot()' functions are 'generic', that is, they know what to
##   do for many different types of objects or, more precisely,
##   for objects of many different types of 'class'.
##
## - Examples:
##   . 'plot(')
         x <- seq(0,4*pi,len=1001)        # n=1001
         y <- sin(x)
         xy <- cbind(x,y)
         plot(y, type="l", col="black")   # one n-vector argument y ==> x=1:length(y)
         plot(x, y, type="l", col="red")  # two n-vector arguments ...
         plot(xy, type="l", col="blue")   # a nx2 matrix ==> 1st column = x, 2nd column = y
         fun <- function(x) { x^2 }
         plot(fun)                        # a function
         plot(fun, from=-1, to=+1)        # same with args 'from' and 'to'
         plot(sonnets.hclust)             # a hierarchical clustering structure
##     ==> 'plot()' knows what to do for many types of incoming arguments.
##   . 'print()':
         print(y)                  # n-vector
         print(xy)                 # nx2 matrix
         print(sonnets.hclust)     # hierarchical clustering structure (not very informative)
##
## - Trick: These functions look up the result of 'class()' of the
##   first arguments and then looks up a function called a 'method' that
##   actually carries out the task of plotting, printing..
         class(y)
         class(xy)
         class(sonnets.hclust)
##
## - You can look up what the 'methods' are that 'print()' and
##   'plot()' actually use, depending on the class:
         methods(print)
         methods(plot)
##   Unfortunately the methods with an asterix are hidden.
##
## - To learn the methods for a given class, use 'class=...':
         methods(class=numeric)
         methods(class=character)
         methods(class=logical)
         methods(class=vector)
         methods(class=matrix)
         methods(class=data.frame)
         methods(class=list)
         methods(class=table)
         methods(class=dist)
         methods(class=hclust)
##   [These may be all the classes we have ever encountered.]
##
## - Here is an example of how you can make up your own class with its
##   own 'print()', 'plot()' and 'summary()' methods:
##
##   Goal: Define a data structure that represents a discrete random
##   variable.  Recall from Stat 101/111 what a random variable is:
##
##    -----------------------------------------------------------
##   |  A discrete random Variable is a list of possible values  |
##   |  with probabilities attached to them.                     |
##    -----------------------------------------------------------
##
##   Examples:
##                                  possible values    probabilities
##   . Fair coin, head=1, tail=0:   (0,1)              (1/2, 1/2)
##   . Fair die:                    (1,2,3,4,5,6)      (1/6, 1/6, 1/6, 1/6, 1/6, 1/6)
##   . A loaded die:                (1,2,3,4,5,6)      (1/7, 1/7, 1/7, 1/7, 1/7, 2/7)
##   . A 'fair' digital option:     (-1, 99)           (0.99, 0.01)
##
##   ==> Let's represent a random variable as a named vector
##       where the elements are the possible values and
##       the names are the probabilities.
##       Let's call the class 'RV' for 'random variable'.
##
##   . Here is a function to create a random variable from a vector of
##     possible values and a vector of probabilities:
         make.RV <- function(possible.values, probabilities) {
             x <- possible.values
             names(x) <- probabilities
             class(x) <- "RV"
             x
         }
##
##   . Make instances representing a fair coin, a fair die, and a loaded die, resp.:
         X <- make.RV(c(1,0), c("1/2","1/2"))   # fair coin
         X.fd <- make.RV(1:6, rep("1/6",6) )    # fair die
         X.ld <- make.RV(1:6, c("1/7","1/7","1/7","1/7","1/7","2/7") )    # loaded die
##
##   . Note:
##     + We allowed the probabilities to be given by strings with algebraic operations!
##     + The 'names' are not required to be unique because their purpose is
##       NOT to access the possible values by their (probability) names.
##       The purpose of the names is to be converted to numeric probability values when needed.
##
##   . A 'method' for printing random variables:
##     So far this prints as follows:  Ugly!
         print(X)
         print(X.fd)
         print(X.ld)
##     Define a function named 'print.RV()' to pretty-print a random variable:
         print.RV <- function(X) {
             x <- format(c(X,names(X)))
             cat("",
                 "  Possible values:     ", x[1:length(X)], "\n",
                 "  Their probabilities: ", x[1:length(X) + length(X)],"\n", sep="  ")
         }
##     This function is now the 'method' for the 'generic function' 'print()':
         print(X)
         print(X.fd)
         print(X.ld)
##     'print()' finds that the class of these arguments is 'RV', so it looks
##     for another function called 'print.RV()' and calls it with the argument.
##
##   . A 'method' for plotting random variables:
##     We need to define a function 'plot.RV()' to serve as 'method' for 'plot():
##     What we would like to do is plot the probabilities against
##     the possible values.  But we allowed each probability to be
##     given in a string that would result in a number if evaluated.
##     This is no problem for "0.75":
         as.numeric("0.75")
##     What about "1/6"?
         as.numeric("1/6")
##     Of course this doesn't work.  And of course people want to do such things:
##     evaluate strings that contain legit R expressions.  Without explaining
##     the necessary magic further, here is a function that does the job:
         eval.strings <- function(x) { sapply(x, function(str) { eval(parse(text=str)) } ) }
##     Examples:
         eval.strings("1/6")              # This is what we will need.
         eval.strings("plot(1:10)")       # Any R expression will work...
         eval.strings(paste("1/",1:10))   # Multiple strings containing R expressions
##     Now a function that evaluates the probabilities and returns them
##     as numeric values has become trivial:
         probs <- function(X) { eval.strings(names(X)) }
##     Examples:
         probs(X)
         probs(X.fd)
         probs(X.ld)
##     For plotting a random variable we essentially need to do this:
         plot(X, probs(X))
##     We will want to be a little more ambitious, though, and get it right:
##     We'll create a beautiful 'pin plot' with good margins and labels:
         plot.RV <- function(X, pch=16, cex=1.2, lwd=2, col="black",
                            stretch.x=1.2, stretch.y=1.2,
                            xlab="Possible Values",
                            ylab="Probabilities",
                            xlim={ rg <- range(X);  mrg <- mean(rg);  mrg + (rg-mrg)*stretch.x },
                            ylim=c(0, max(probs(X))*stretch.y),
                            ...) {
         x <- as.numeric(X)
         px <- probs(X)
         plot(x, px, type="h", lwd=lwd, col=col, xlab=xlab, ylab=ylab, xlim=xlim, ylim=ylim, ...)
         abline(h=0, col="gray")
         points(x, px, pch=pch, cex=cex, col=col)
         }
##     Try:
         plot(X,    main="Fair Coin")
         plot(X.fd, main="Fair Die")
         plot(X.ld, main="Loaded Die")
##
##   . Let's next define functions to compute summaries of  random variables:
         E <- function(X)  { sum(X * probs(X)) }   # expected value
         V <- function(X)  { E((X - E(X))^2) }     # variance
         SD <- function(X) { sqrt(V(X)) }          # standard deviation
##     Examples:
         E(X)
         V(X)
         SD(X)
         E(X.fd)  # ...?
         V(X.fd)
         SD(X.fd)
         E(X.ld)  # 3.857...  loaded, yes, by 0.037...
         V(X.ld)
         SD(X.ld)
##
##   . Write a 'summary()' method that uses these quantities!
##
         summary.RV <- function(X) {
             cat("    Expected value: ", E(X), "    Std.Dev.: ", SD(X),
                 "    Range: ", min(X),"...", max(X), "\n", sep="")
         }
##     Examples:
         summary(X)
         summary(X.fd)
         summary(X.ld)
##
##   . Define a function 'P()' to calculate probabilities of events:
##     Q: What's an 'event'?
##     A: An event is essentially a subset of the possible values
##     Q: How do we specify events?
##     A: With conditions such as
         X == 1
         X.fd >= 5
         X.ld == 1 | X.ld == 4
##     Q: Now can we calculate the probability of events given by
##        logical values assigned to the possible values?
##     A: Note that the logical vectors generated by these conditions
##        carry the names containing the probabilities!
             probs(X.fd >= 5)
##     This is still the list of all probabilities.
##     So we need to select those that define the event:
             probs(X.fd >= 5)[X.fd >= 5]
##     Which is what we need to sum up:
             sum( probs(X.fd >= 5)[X.fd >= 5] )
##     Package the idea in a function:
         P <- function(A) { sum(probs(A)[A]) }
##     Examples:
         P(X == 1)
         P(X.fd >= 5)
         P(X.ld == 1 | X.ld == 4)
##
## - OUTLOOK:
##
##   . One can do a lot more, see the instructor's webpage.
##     For example, one can define new random variables
##     from sums of independent random variables.
##     One can then illustrate the central limit theorem
##     by adding up many identically distributed independent
##     random variables...
##     One can also draw random samples from the random variables,
##     generating 'data'...
##
##   . For us this was an exercise in building an interesting
##     'class' in R and providing it with methods for the
##     generic functions 'print()', 'plot()', and 'summary()'.



#================================================================
##
##
## SIMULATION AND STATISTICAL INFERENCE
##
##
## * BACKGROUND:
##
## - Probability is the concept that allows us to reason about
##   randomness and uncertainty.  Contrary to common sense, if things
##   are random, it does not mean that we can't know anything.
##   Randomness is always structured, and knowing or at least
##   estimating this structure underlies all of science, policy making
##   and business.  The turn to stochastic/probabilistic reasoning is
##   one of the great achievements of the 20th century that now
##   pervades all spheres of advanced human life.
##
## - Probability is 'limiting relative frequency' or 'limiting
##   proportion' when the number of independent observations goes to
##   infinity.  Probability is therefore an idealization, just like
##   straight lines in geometry, real numbers in calculus, point
##   masses and point charges in physics.  Powerful reasoning requires
##   powerful idealizations, and probability is one example.
##
##   (The view of probability in this class is 'frequentist'.  An
##    alternative view of probability is used by the 'Bayesian'
##    framework where probability is perceived gambling odds or degree
##    of belief.  For statistical methodology based on the Bayes
##    paradigm, see Stat 542, a popular PhD level class also taken by
##    advanced undergrads.)
##
## - With data analytics and statistics in mind, we will focus on the
##   use of probability distributions for 'stochastic simulation',
##   that is, generating random data.  This has multiple goals:
##
##   . Simulation will allows us to generate datasets that are truly
##     random but whose random structure we understand.  This provides
##     a powerful way of training our eyes for structured randomness.
##
##   . Simulation is at the core of some of the most versatile methods
##     for statistical inference.  These are: (1) permutation tests,
##     (2) bootstrap-based confidence intervals.
##
##   . You may discover that after having taken at least two
##     statistics courses you never understood the meaning and purpose
##     of statistical inference.  True, you know the motions for
##     calculating a statistical test or a confidence interval, but
##     what is the real meaning of it?  Here is a quiz question to
##     make the point: Can you clearly explain the difference between
##     standard deviation and standard error?
##
##
## * PROBABILITY DISTRIBUTIONS IN R
##
##
## - Probability distributions on number ranges can be given in three ways:
##   . Probability density functions     ('pdf')   [here 'pdf' is NOT the document format PDF!]
##   . Cumulative distribution functions ('cdf')
##   . Quantile functions (the inverse of the cdf)
##   There is little use for pdf's, but a lot for cdf's and quantile functions.
##
##
## - THE PREMIER EXAMPLE: the Standard normal distribution, N(0,1)
##     Recall:  If  X ~ N(0,1),  then  E[X] = 0  and  SD[X] = 1.
##
##   . pdf: 'dnorm()' -- same as exp(-x^2/2)/sqrt(2*pi)
         dnorm(0);    exp(-0^2/2)/sqrt(2*pi)
         dnorm(1);    exp(-1^2/2)/sqrt(2*pi)
         dnorm(-1)
         dnorm(c(-1,0,1))  # Surprised?
         x <- seq(-3,3,len=301);  plot(x, dnorm(x), type="l");  abline(h=0)
##
##   . cdf: 'pnorm()'   ( = the integral of 'dnorm()' from -Inf to x)
##
##      -----------------------------------------
##     |  pnorm(x) = P(X < x)  when  X ~ N(0,1)  |
##      -----------------------------------------
##
         pnorm(1.96)                    # P(X < 1.96)
         pnorm(-1.96)                   # P(X < -1.96)
         pnorm(1.96) - pnorm(-1.96)     # P(-1.96 < X < -1.96)
         pnorm(c(-1.96, 1.96))          # c(P(X < -1.96), P(X < 1.96))
         diff(pnorm(c(-1.96, 1.96)))    # P(-1.96 < X < -1.96)
         diff(pnorm(c(-1.96, 0, 1.96))) # c(P(-1.96 < X < 0), P(0 < X < 1.96))
         pnorm(2.56)
         1 - pnorm(2.56)                # P(X > 2.56)
         pnorm(2.56, lower=FALSE)       #   same
##       ~ Where are some of these values used?
##       ~ Explain why certain values are the same.
##
##     Application of the normal cdf:
##     + When performing statistical tests, the test statistic
##       is often approximately N(0,1) distributed under the
##       null hypothesis.  This is generally the case when an
##       estimate is divided by its standard error.
##     + If you are in such a situation, and if the observed value
##       of the test statistic is 3.1, what is its
##       ~ upper one-sided p-value?
           pnorm(3.1, lower=F)
##       ~ two-sided p-value?
           pnorm(3.1, lower=F) * 2
##
##   . quantile function: 'qnorm()' -- the inverse of 'pnorm()'
##       The argument is a probability >0, <1; the result is the
##       quantile for that probability:
##
##      -----------------------------
##     |  P(X < qnorm(prob)) = prob  |     or:  pnorm(qnorm(prob)) = prob
##      -----------------------------
##
         qnorm(0.5)                 # What's this called? ...
         qnorm(c(0.25, 0.50, 0.75)) # What are these called? ...
         qnorm(seq(0,1,by=0.1))     # What are these called? ...
         qnorm(0.995)
##
##     Application of the normal quantile function:
##     + You want to form a confidence interval (CI) of the form
##       [estimate - C * standard error, estimate + C * standard error]
##       Assuming the estimate is roughly normally distributed,
##       what multiplier 'C' should you use to achieve a 0.99 CI?
           ???
##
##   . Non-standard normal distributions N(m,s^2):
##     ~ dnorm(), pnorm() and qnorm() have arguments 'm' and 's'.
##       'mean' or 'm' for short: mean/expected value/location parameter
##       'sd' or 's' for short:   standard deviation/dispersion parameter
##     ~ In principle they are not necessary but convenient
##       because shifte/scaled normal distributions can be standardized to N(0,1):##
         pnorm(8, m=2, s=3)
         pnorm((8 - 2)/3)    # Reduction to standard normal
##       They are the same:
##       If   Y ~ N(m,s^2),  then X = (Y-m)/s ~ N(0,1).
##       Here we had Y=8.
         qnorm(0.975, m=2, s=3)
         qnorm(0.975)*3 + 2
##       They are the same:
##       If  X ~ N(0,1),  then  Y = X*s+m ~ N(m,s^2)
##
##
## - OTHER CONTINUOUS DISTRIBUTIONS:
##
##   . t-distributions: 'df=...' degrees of freedom
##     ~ Where are t-distributions used?
##       ...
##     ~ Compare t- and normal density functions:
         x <- seq(-3,3,len=301)
         plot(x, dt(x, df=9), type="l");  lines(x, dnorm(x), col="blue")
##     ~ p-value of t=2.8, upper one-sided, when df=9:
         pt(2.8, df=19, lower=F)
##     ~ p-value of t=2.8, two-sided, when df=9:
         2*pt(2.8, df=9, lower=F)
##     ~ quantile used as multiplier of standard error for a 99% CI when df=9:
         qt(0.995, df=9)
##       Compare to normal quantile, which means 'df=Inf':
         qnorm(0.995)
##       ==> Very small datasets require much wider CIs due to unreliable standard error estimation.
##
##   . Gamma distributions:
         x <- seq(0,10,len=501)
         plot(x, dgamma(x, shape=0.5, scale=1), type="l", ylim=c(0,1), ylab="Gamma Densities")
         for(shape in 1:8) {
             lines(x, dgamma(x, shape=shape, scale=1), type="l")
         }
##     The gamma family is for random vaariables where the possible values are strictly positive.
##     The gamma family contains:
##     ~ the chi-squared distributions dchisq(...,df) for dgamma(...,shape=df/2,scale=2);
         lines(x, dchisq(x, df=3), col="red", lwd=8)
         lines(x, dgamma(x, shape=3/2, scale=2), col="green", lwd=2)   # same
##     ~ the exponential distribution  dexp(...)   for dgamma(...,shape=1,scale=1).
         lines(x, dexp(x), col="blue", lwd=8)
         lines(x, dgamma(x, shape=1, scale=1), col="green", lwd=2)     # same
##     The associated 'p' and 'q' functions for the gamma, chisq and exp families:
         pgamma(3, shape=3, scale=1)
         qgamma(0.5, shape=3, scale=1)   # median of Gamma(3,1)
##     ~ Chisquare:
         pchisq(4, df=5)                 # P(X < 4) for X ~ Chisq(5) = Gamma(5/2,2)
         pgamma(4, shape=5/2, scale=2)   # Same
         qchisq(0.5, df=5)               # median of Chisq(5) = Gamma(5/2,2)
         qgamma(0.5, shape=5/2, scale=2) # Same
##     ~ Exponential:
         pexp(1)                         # P(X < 1)
         pgamma(1, 1, 1)                 # Same
         qexp(0.5)                       # Median of Exp = Gamma(1,1)
         qgamma(0.5, 1, 1)               # Same
##
##
##   - Finally, here is the "mother"/"father" of all univariate real-valued distributions:
##              the uniform distribution: dunif(), punif(), qunif()
         x <- seq(-.2, 1.2, len=1001)
         plot(x, dunif(x), type="l", lwd=5, ylim=c(-.2, 1.2));  abline(h=0)
##
##     . Uniform distributions exist for all intervals, given by 'min' and 'max':
           punif(2.5, min=2, max=5)
           punif((2.5-2)/(5-2))         # Same:  Y ~ U(min,max) ==> X = (Y-min)/(max-min) ~ U(0,1)
           qunif(0.75, min=2, max=5)    # Upper quartile of U(2,4)
           qunif(0.75)*(5-2) + 2        # Same:  X ~ U(0,1)  ==>  Y = X*(max-min)+min ~ U(min,max)
##
##     . Whatever you do with distributions can be reduced to the uniform U(0,1):
##       If F() is the cdf of a distribution Y and X ~ U(0,1),
##       then the random variable   F^{-1}(X)  has the cdf F().
##
##        --------------------------------------------------------
##       |  If X ~ U(0,1) and F() is a cdf with an inverse, then  |
##       |          -1                                            |
##       |     Y = F  (X)                                         |
##       |  is a random variable with cdf F().                    |
##        --------------------------------------------------------
##
##       Remember:
##         p...() implements the cdf:           pnorm(), pt(), pgamma(), pchisq(), pexp(), ...
##         q...() implements the inverse cdf:   qnorm(), qt(), qgamma(), qchisq(), qexp(), ...
##


#================================================================
##
##
## * SIMULATING PROBABILITY DISTRIBUTIONS WITH PSEUDO-RANDOM NUMBERS
##
##
## - Every distribution family has an associated 'r' function
##     for generating random numbers from this distribution:
         rnorm;  rt;  rgamma;  rchisq;  rexp;  runif
##
##   . Here are 10 random numbers drawn from the standard normal distribution:
         rnorm(10)
##     This generates 10 random draws from the normal distribution N(0,1).
##
##   . These numbers are not truly random, but they behave like
##     truly random for all practical (computational) purposes.
##     In the 1950-1980s there was a lot of research into 'good'
##     pseudo-random numbers.  Today we can consider this a
##     solved problem and simply use implementations of
##     pseudo-random number generators, trusting we're getting
##     the latest in most languages.
##
## - Remarkably, every time you call this function, you'll get
##   different results:
         rnorm(10)
##   ==> Random number generators are 'funny functions';
##       they are not functions in the mathematical sense.
##
##
## - WHAT ARE RANDOM NUMBERS GOOD FOR?
##   ANSWER (1): They show us what 'nice data' would look like.
##
##   . Example: Remember 'StudentHeights'?
         Students <- read.csv("http://stat.wharton.upenn.edu/~buja/STAT-470-503/Students.csv", as.is=T)
         colnames(Students)
         range(Students$HEIGHT)
         br <- seq(52,84,by=2)
         hist(Students[,"HEIGHT"], col="gray", breaks=br, main="", xlab="Heights")
##     Is it reasonable to assume the heights are drawn from a normal distribution?
##     Here is a plot of normal random numbers with the same mean and sd:
         nrow(Students)
         n <- 390
         mean(Students[,"HEIGHT"])
         m <- 67.75     # Slightly rounded mean
         sd(Students[,"HEIGHT"])
         s <- 4         # Slightly rounded sd
         y <- rnorm(n, m=m, s=s)
         hist(y, col="gray", breaks=br, main="", xlab="Heights")
##     Plot side by side, stretch the window so both frames look about square:
         par(mfrow=c(1,2))
         hist(Students[,"HEIGHT"], col="gray", breaks=br, xlab="Heights", main="Actual")
         y <- rnorm(n, m=m, s=s)
         hist(y, col="gray", breaks=br, xlab="Heights", main="N(67.75,4^2)")
##
##   . Do you remember a more powerful check for normality from Stat 102/112?
##     ==> ...
##     Here is the R function for it:
         qqnorm(Students[,"HEIGHT"], pch=16)
##     Looks normal up to rounding to whole or half inches.
##     What would truly normal data look like?
         qqnorm(y, pch=16)
##     Put them in one figure:
         par(mfrow=c(1,2))
         qqnorm(Students[,"HEIGHT"], pch=16, main="Actual")
         y <- rnorm(n, m=m, s=s)
         qqnorm(y, pch=16, main="N(67.75,4^2)")
##     Fix vertical axes and add an ideal diagonal line:
         ylim <- m+c(-1,1)*3*s
         qqnorm(Students[,"HEIGHT"], pch=16, ylim=ylim, main="Actual")
         abline(a=m, b=s)
         y <- rnorm(n, m=m, s=s)
         qqnorm(y, pch=16, ylim=ylim, main="N(67.75,4^2)")
         abline(a=m, b=s)
##     Would rounding make it look more like the actual data?
         qqnorm(Students[,"HEIGHT"], pch=16, ylim=ylim);  abline(a=m, b=s)
         qqnorm(round(y*2)/2, pch=16, ylim=ylim);  abline(a=m, b=s)
##     Not quite, but closer.  In reality people prefer whole inches over half inches.
##
##   . General idea:
##
##      ---------------------------------------------------------------------
##     |  We can use random numbers to check what good data would look like  |
##     |  if they followed a model.                                          |
##      ---------------------------------------------------------------------
##
##
## - WHAT ARE RANDOM NUMBERS GOOD FOR?
##   ANSWER (2): We can learn what the variability of estimates is.
##
##   . EXAMPLE: If student heights were distributed like N(67.75,4^2),
##              then their means would look something like this:
         y.obs <- Students$HEIGHT
         y <- rnorm(390, 67.75, 4)
         mean(y)
##     Think of 'y' as a potential dataset and mean(y) as its summary.
##     We now have a way to observe what the natural variability of
##     the mean is ACROSS DATASETS.
##     Let's collect a few such means for 1000 datasets:
         Nsim <- 1000
         y.means <- sapply(1:Nsim, function(j) { mean(rnorm(390, m=67.75, s=4)) } )
##                         ^^^^^^                     ^^^^^^^^^^^^^^^^^^^^^^^^
##                     for 1000 datasets:             dataset of size n=390
##                                               ^^^^^^^^^^^^^^^^^^^^^^^^^^
##                                                    mean of dataset
##
##      -----------------------------------------------------------
##     |  These values reflect the variability of the sample mean  |
##     |             from dataset to dataset!                      |
##      -----------------------------------------------------------
##
##       PS1: Programming note about the simulation
##            If you prefer 'for'-loops over 'sapply()',
##            here is some more leisurely code:
                y.means <- rep(NA,Nsim)     # Pre-allocate an empty result vector
                for(isim in 1:Nsim) {                  # Simulate 1000 times
                    y.sim <- rnorm(390, m=67.75, s=4)  # Simulated vector of length 390
                    y.means[isim] <- mean(y.sim)       # Store its mean
                }                                      # Done
##
##       PS2: Another programming not about the simulation
##            Have a careful look at this code:
                y.means <- sapply(1:Nsim, function(j) { mean(rnorm(390, m=67.75, s=4)) } )
##            Does the function given to 'sapply()' as its second argument
##            use the argument 'j' at all?  It doesn't.
##            It would need it if you wanted to build in a zombie insurance
##            by printing something every so often to make sure the code
##            is still running:
                y.means <- sapply(1:Nsim, function(j) {
                    mean(rnorm(390, m=67.75, s=4))
                    if(j%%10000==0) cat(j," ")
                } ); cat("\n")
##            However, the code is so simple and the time it takes
##            short enough that we don't need the periodic printing.
##            For this case there is a programming shortcut:
##              'replicate()'
##            Instead of giving it a ladder, we till it how often to repeat,
##            and instead of a function with a dummy argument, we give it
##            an expression:
                y.means <- replicate(Nsim, mean(rnorm(390, m=67.75, s=4)) )
##            We'll use this from now on in simple and cheap simulations.
##
##     Let's do stats of the simulation:
##
##     ~ The mean of the means:
           mean(y.means)
##       Are we surprised?  Why not?  Mean of means ...
##       We assumed the true mean to be 67.75 by using rnorm(...,m=67.75,...).
##       The mean of means is really the mean of 1000*390=390,000 observations,
##       so it will be very close to 67.75.
##
##     ~ Now here is the truly interesting quantity: the dispersion of the means!
           sd(y.means)       # (1)
##       Do we know another way to estimate whatever
##       sd(y.means) is estimating?  Yes, we do:
           sd(y.obs)/sqrt(390)   # (2)
##       This is the standard error estimate of the mean as you were
##       taught in Stat 101 or 111.
##       The values (1) and (2) are close, so apparently the formula
##            sd(y)/sqrt(length(y))
##       gives a good estimate of the dispersion of the mean.
##       We assumed that the true standard deviation of the heights is 4 inches.
##
##      -------------------------------------------------------------
##     |   Standard Error  :=  Standard Deviation of an Estimate     |
##     |                       as it varies from dataset to dataset  |
##      -------------------------------------------------------------
##
##
## - WHAT ARE RANDOM NUMBERS GOOD FOR?
##   ANSWER (3): We can use simulations to perform statistical tests
##               and form confidence intervals
##
##   . This is an extension of the previous answer because once
##     we understand standard errors, we can use them to form
##     ~ retention intervals for tests and
##     ~ confidence intervals.
##     The standard error of the mean allows us to judge whether specific
##     assumptions about the TRUE MEAN are compatible with the data.
##
##   . PRELIMINARIES: Recall what the 'TRUE MEAN' is: It's the mean if
##     we had a dataset of infinite size.  'Having a dataset of
##     infinite size' is a metaphorical expression for knowing the
##     true distribution, justified by the law of large numbers.
##     Similarly there is a TRUE STANDARD DEVIATION.
##     The arguments 'm=67.75' and 's=4' to 'rnorm()' are
##     ASSUMED TRUE values for the mean and standard deviation:
         rnorm(10, m=67.75, s=4)
##     [What we did above is we estimated these values from the data
##      and treated them as if they were TRUE, which they aren't.
##      Thus we committed a hack!]
##
##     What's the use of talking about a 'true mean'?  We never have
##     an infinite dataset, and we never know the 'true mean'!
##     HOWEVER: People make assumptions about the truth all the time!
##     'Truth talk' is always about the whole reality out there,
##     not about any particular observed data.
##
##   . THE ROLE OF DATA: We use data to check whether 'truth talk'
##     is compatible with observations.  While specific assertions
##     about the reality as a whole can never be proven based on data,
##     they can often be 'disproven', or at least rejected with a
##     high degree of confidence.
##
##   . An exercise: If someone says the true mean of student heights
##     is really 67 inches, is this compatible with the data?
##
##     Preliminaries: The relevant quantities are the following.
         y.obs <- Students$HEIGHT
         n <- length(y.obs)
         m.obs <- mean(y.obs)
         s.obs <- sd(y.obs)
##     Pretty printed reminders:
         data.frame(n=n, m.obs=m.obs, s.obs=s.obs)
##     The question is whether a true mean of 67 is compatible with
##     data that produce these quantities: mean~67.75, sd~4 and n=390.
##
##   . REMEDIAL STAT 101/111: Testing a null hypothesis about the true mean
##
##     Steps:
##
##       1) State the null hypothesis 'H0: true mean = 67'
              m.H0 <- 67
##
##       2) Estimate the standard error of the mean by
              SE <- s.obs/sqrt(n)
##
##       3) Decide on a Type I error such as
              alpha <- 0.05
##          [This is the 'false rejection rate' we permit ourselves;
##           1-alpha = 0.95 is the 'confidence level'.]
##
##       4) Calculate a multiplier for the standard error
##          using the t-distribution with degrees of freedom n-1.
              K <- qt(1-alpha/2, df=n-1);  K   # Roughly 2
##          ['alpha/2' is for 2-sided procedures.]
##
##       5) Calculate either
##          ~ a retention interval (RI) around the assumed true mean, or
##          ~ a confidence interval (CI) around the observed mean.
              RI <- m.H0 + K*SE*c(-1,1);  RI    # Calculate both
              CI <- m.obs  + K*SE*c(-1,1);  CI  # for illustration.
##
##       6) Retain the null hypothesis if
##          ~ the observed mean is in the RI,
##            or, equivalently,
##          ~ the true mean under H0 is in the CI.
              is.in.interval <- function(value, interval) { interval[1] <= value & value <= interval[2] }
              is.in.interval(m.obs, RI)
              is.in.interval(m.H0, CI)
##          The answer is 'FALSE', hence H0 is rejected at level alpha=0.05.
##          ==> 67 inches is not compatible with the data at level alpha=0.05.
##
##          Interpretations of the intervals:
##          ~ The RI contains the observed means that would be compatible with H0.
##          ~ The CI contains the true means that would be retained if hypothesized.
##
##       7) To measure just how incompatible the present H0 is with
##          the observed data, calculate the p-value:
##          This is the probability of a value of the test statistic
##          more extreme than the one we observed if H0 were true.
              pvalue.2sided.t <- function(t, df) { 2 * pt(abs(t), df=df, lower=F) }
              pvalue.2sided.t((m.obs-m.H0)/SE, n-1)
##            [1] 0.0002064446
##          ==> Only ~2 in 10,000 times does the test statistic exceed
##              the observed value if H0 is true.
##          ==> Strong evidence against H0 at alpha = 0.05, 0.01, even 0.001.
##
##
##   . SIMULATION-BASED TESTING: Here is finally Answer 3 for the
##     question of what the uses are of simulations based on random
##     numbers.  We proceed in steps to reconstruct the Stat 101/111
##     routine.  It might also illuminate what the meaning of that
##     routine is.
##
##     0) Assume we knew nothing about t-tests and t-distributions,
##        but we knew how to simulate data from normal distributions.
##        How would we go about testing 'H0: true mean = 67'?
##
##     1) First we need to discover a suitable test statistic.
##        The observed mean is not suitable.  Its distribution depends
##        on both the true mean and the true standard deviation.
##        We can easily deal with the true mean by subtracting it.
##        It is given by the null hypothesis H0:
            mean(y.obs) - m.H0   # (*)
##        This measures the distance between observed and hypothesized
##        means, hence is a good measure for compatibility between
##        data and H0.  A nice property is that the distribution of (*)
##        does no longer depend on the true mean 'm.H0':
##        The true mean of (*) is zero if H0 is true.
##
##     2) Second, we still have a dependence of the distribution of (*)
##        on the true standard deviation 's.true'.  From Stat 101/111
##        you might know that the standard deviation of (*) is
##                  s.true/sqrt(n).
##        We are not interested in 's.true'; it is a so-called
##        'nuisance parameter' in the context of 'H0: true mean = 67'.
##        How can we get rid of the dependence of the distribution
##        of (*) on s.true?  Here is an idea:
##        Divide (*) by an estimate of dispersion:
            (mean(y.obs) - m.H0) / sd(y.obs)  # (**)
##        The idea is that if the true standard deviation of the data
##        is doubling (e.g.), then so are the numerator AND denominator
##        of (**).  Hence the distribution of (**) does not change if
##        the true standard deviation changes.  (**) is a so-called
##        'pivotal quantity' with regard to 's.true'.
##
##        --------------------------------------------------------------
##       |                                                              |
##       |  Nuisance parameter  =  parameter NOT of interest            |
##       |                                                              |
##       |  Pivotal quantity = random quantity whose DISTRIBUTION does  |
##       |                     NOT depend on nuisance parameters; i.e., |
##       |                     its distribution only depends on the     |
##       |                     parameters of interest                   |
##       |                                                              |
##        --------------------------------------------------------------
##
##        Which parameter is of interest depends on the problem.
##        Currently the parameter of interest is the true mean and the
##        nuisance parameter is the true standard devation.
##        (Below we'll reverse the roles.)
##
##        The only aesthetic criticism of (**) is that it creates small
##        numbers, the smaller the larger 'n'.  Why?  Because the
##        standard deviation of the numerator keeps shrinking like
##        's.true/sqrt(n)', whereas the denominator approaches 's.true'.
##        The solution is to multiply (**) by 'sqrt(n)' or, equivalently,
##        divide the denominator by 'sqrt(n)':
##            (mean(y.obs) - m.H0) / sd(y.obs) * sqrt(n)
##          = (mean(y.obs) - m.H0) / (sd(y.obs) / sqrt(n))
##          = (mean(y.obs) - m.H0) / SE
##          = t
##        So we re-discovered the t-ratio as a suitable test statistic!
##        It is pivotal wrt 's.true'.  This is what we will evaluate
##        in our simulation.
##        The t-statistic has an intuitive meaning:  It is really a change
##        of units of 'mean(y.obs)', the center of the scale being 0
##        (corresponding to 'm.H0' on the raw scale), and the unit being
##        one standard error.  So:
##
##         --------------------------------------------------------------------------------
##        |  t-ratio = answer to the question                                              |
##        |            'How many standard errors is the observed mean from the true mean?' |
##         --------------------------------------------------------------------------------
##
##
##     3) Simulation of t-ratios under H0:
            Nsim <- 100000
            t.null <- replicate(Nsim, {
                y <- rnorm(n, m=m.H0, s=4)              # 's=4' is irrelevant!!
                t <- (mean(y) - m.H0) / (sd(y)/sqrt(n))
                t } )
##
##     4) SIMULATION-BASED RETENTION INTERVALS AND P-VALUES:
##        Observed t-ratio:
            t.obs <- (mean(y.obs) - m.H0) / (sd(y.obs)/sqrt(n));  t.obs
##        RI for the t-ratio:
            RI.sim <- quantile(t.null, c(0.025, 0.975));  RI.sim
##        We know that the interval should be symmetric, so let's
##        symmetrize it: Average the magnitudes.
            RI.sim <- mean(abs(RI.sim)) * c(-1,+1);  RI.sim
##        Test:
            is.in.interval(t.obs, RI.sim)  # FALSE ==> Rejection of H0
##        p-value:
            pval.sim <- mean(abs(t.null) >= abs(t.obs));  pval.sim  #
##                               ^^^^^^         ^^^^^
##                   100,000 null values >= the observed value
##
##          [PROGRAMMING NOTE 1:  Recall that 'mean()' of a logical vector
##           produces the proportion of TRUE in the vector.
##           Reason: Logicals are coerced to 1/0 ~ TRUE/FALSE.]
##
##          [PROGRAMMING NOTE 2:  Simulation results vary somewhat between runs.
##           The larger 'Nsim', the less they will vary.
##           Let's make a comparison of 'RI.sim': What is your value of
                RI.sim[2]         #]
##
##        'pval.sim' is the estimated proportion of times that a null value
##        exceeds the observed value in magnitude, i.e., this is the
##        p-value estimated by simulation.
##
##     5) We can look at the simulation results more intuitively with a plot:
            hist(t.null, col="gray", xlim=c(-5,+5))  # t-ratios if H0 were true
            abline(v=t.obs, col="red", lwd=4)        # Observed t-ratio
            text(x=c(median(t.null), t.obs), y=c(0,0), adj=c(.5,-10),
                 lab=c("Likely under H0","Observed"))
##        ==> The observed t-ratio (corresponding to m.obs = 67.75) is
##            extreme wrt the histogram centered around 'm.H0 = 67'.
##        ==> H0 is not compatible with the data.
##
#---------------------------------------------------------------- end of lecture 24
##
##   . UNDER THE HOOD: Try to understand the following points.
##     In the above simulation the critical lines of code were:
##              y <- rnorm(n, m=m.H0, s=4)
##              t <- (mean(y) - m.H0) / (sd(y)/sqrt(n))
##     Observations:
##     ~ 's=4' is totally irrelevant in the simulation
##       because 't' is pivotal for 's'.
##     ~ We generated normal data centered at 'm=m.H0',
##       but in forming 't' we subtracted 'm.H0'.
##       Thus we might as well have used 'm=0' and not subtract
##       anything in 't'.
##     ~ 'sd(y)' is independent of the choice of 'm=m.H0'.
##       (You could say 'sd(y)' is pivotal wrt the true mean.)
##
##     ==> We can abbreviate the simulation as follows:
           Nsim <- 100000
           t.null <- replicate(Nsim, {
               y <- rnorm(n)              # standard normal: 'm=0, s=1'
               t <- mean(y) / (sd(y)/sqrt(n))
               t } )
##     This simulation is independent of the values of
##     the true mean (assumed to be 'm.H0') and of the
##     true standard deviation.

##     It turns out we simulated the t-distribution instead of
##     using its known analytical form as implemented by 'qt()':
##     When we formed the simulation-based RI
           quantile(t.null, c(0.025, 0.975))
##     we really approximated the following more exact answer:
           qt(c(0.025, 0.975), df=n-1)
##     but we pretended not to know the t-distribution.
##     Simulations always produce approximate answers
##     (the larger 'Nsim', the more precise the results),
##     but they allow us to do statistical inference even
##     if we don't have analytical answers.
##
##
##   . INFERENCE FOR THE TRUE STANDARD DEVIATION:
##     Someone asserts that the true standard deviation of the
##     heights is 4.5 inches.  Is this compatible with the data?
##     This question asks for a RI for the true standard deviation,
##     not the mean.
##
##     Do we know how to do this?  Do we have a formula?  We don't.
##     ==> Simulation to the rescue.
##     We proceed again in steps, devising a suitable test statistic.
##
##     1) First, let's state the null hypothesis: 'H0: s=4.5'
            s.H0 <- 4.5
##
##     2) Test statistic: What about 'sd(y) - s.H0'?
##        This seems to work: It is pivotal with regard to the
##        nuisance parameter, which is the true mean 'm.true'.
##        [In Stat 101 the instructor used to dwell on facts such as:
##           sd(y+c) = sd(y)
##         This property implies that the true mean is pivotal for
##         'sd(y)' because it shows that 'sd(y)' is immune to shifting
##         the data around.]
##        Because 'sd(y)' is a ratio-scale quantity (it is > 0 for
##        non-constant data), one prefers the ratio of sd(y) and s.H0:
            s.teststat.obs <- sd(y.obs)/s.H0;  s.teststat.obs
##        Thus large deviations from 1 will indicate that the data
##        are incompatible with 'H0: s.true=5'.
##
##     3) Simulation:
            s.teststat.null <- replicate(10000, {
                y <- rnorm(n,s=s.H0)        # null data vector of length n
                s.teststat <- sd(y) / s.H0
                s.teststat } )
##        PROGRAMMING NOTE:
##        Observe that we simulated 's=s.H0' but then divided by 's.H0'.
##        ==> We might as well choose 's=1' (the default) and not divide.
##        Let's compress the code to a one-liner:
            s.teststat.null <- replicate(10000, { sd(rnorm(n)) } )
##        Even though this is a programming observation,
##        it explains why one prefers 'sd(y)/s.H0' over 'sd(y)-s.H0':
##        The ratio has a distribution that is independent of 's.H0',
##        whereas the distribution of the difference is dependent on 's.H0'.
##
##     4) RI and test result:
            RI <- quantile(s.teststat.null, c(0.025, 0.975));  RI
            is.in.interval(s.teststat.obs, RI)    # FALSE
##        ==> 'H0: s=5' is not compatible with the data.
##
##     5) P-value: This requires some care because of the asymmetry
##        in the lower and upper tail of the distribution.
##        The test statistic is bounded below by zero
##        but unbounded above.  Also, the null distribution
##        is centered at 1, not 0.
##        The simplest solution in such situations is to calculate
##        upper and lower exceedance rates separately, take the
##        smaller of the two rates, and double it for a 2-sided procedure:
            mean(s.teststat.null <= s.teststat.obs)  # lower exceedance rate
            mean(s.teststat.null >= s.teststat.obs)  # upper exceedance rate
##        Hence the proper p-value is as follows, using a helper function:
            pval.2sided <- function(obs, null) {
                2*min(mean(null <= obs), mean(null >= obs)) }
##        This function is general purpose!  You can use it in any
##        situation where you simulated a null distribution.
##        Here is our simuation-based p-value for 'H0: s=4.5':
            pval.sim <- pval.2sided(s.teststat.obs, s.teststat.null)
            pval.sim
##        Again, this may differ somewhat between simulations.
##
##     6) And again we take a more intuitive look at the null distribution:
            hist(s.teststat.null, col="gray")     # s-ratios if H0 were true
            abline(v=s.teststat.obs, col="red", lwd=4)     # Observed s-ratio
            text(x=c(median(s.teststat.null), s.teststat.obs), y=c(0,0), adj=c(.5,-10),
                 lab=c("Likely under H0","Observed"))
##
##     7) PS: Is there really no analytical test for a very basic null
##            hypothesis about the true standard deviation?
##            Actually, there is...  It's a chi-squared test:
##            It turns out that under H0 the statistic
##                        (n-1) * (sd(y)/s.H0)^2
##            has a 'chisq' distribution with 'n-1' degrees of freedom.
##            So in a way we reconstructed this test not knowing about it.
##            Using the 'chisq' distribution and mapping it to our scale of
##            standard deviations, we have to divide the 'chisq' quantiles
##            by n-1 and take the root to obtain a more exact RI:
                sqrt(qchisq(c(0.025, 0.975), df=n-1) / (n-1))
##            Our RI was
                RI
##            which is close.
