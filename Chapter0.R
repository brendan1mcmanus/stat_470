##================================================================


## ------------ INTRODUCTION TO BASICS OF R  ------------


## WHY R?


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
                     "But that pattern came to a stunning reversal Monday when Anderson upended the third-seeded Murray, 7-6 (5), 6-3, 6-7 (2), 7-6 (0), in Louis Armstrong Stadium in the biggest upset of the men¡¯s draw in this year¡¯s United States Open." )
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
## Let's try the boxed examples:
       2 = 2                        # Just a silly mistake.
       2 == 2                       # TRUE
       (0.5 - 0.3) == (0.3 - 0.1)   # FALSE on most machines!! BIG SURPRISE!
       (5 - 3) == (3 - 1)           # TRUE
       3.14159 == pi                # FALSE, correctly
## To solve comparison problems for near-identity of decimal numbers,
## use a tiny threshold for comparison:
       eps <- 1E-10       # 'eps' for 'epsilon', used in math for small numbers
       abs((0.5 - 0.3) - (0.3 - 0.1)) < eps    # TRUE
## The function 'abs()' returns the absolute value of its argument,
## element by element:
       abs((-5):(+5))
## One more example:
       abs(3.14159 - pi) < eps
## We'd have to raise 'eps' to 1E-5 to obtain TRUE in this case.
## [A problem with thresholds is that they are unit-dependent.
##  For example, if height of humans were expressed in miles,
##  one would obtain very small numbers according to
##     (height in miles) = (height in inches) / 63360
##  and suddenly a threshold of 'eps <- 1E-10' is no longer
##  very small.  It would have to be changed to 'eps <- 1E-10/63360'
##  to be equivalent to 'eps <- 1E-10' in inches.
##  ]


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
## For the instructor, these are all TRUE.
## For you, this might not be the case.
## But on other computers/operating systems/R settings
## the following might all be TRUE:
       c("A"<"Z", "Z"<"a", "a"<"z")
## Here is where a big mess starts:
## There exist different string sorting conventions!
## We won't go into much detail of why and how this happens.
## Instead here are a few rules to guide you:
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
## with 'c()':
        x <- c(a=10, b=20, c=30)
        x
## By the way, we can also quote the element names, which is
## better programming style and allows us to use funny characters
## in the names:
        x <- c("a"=10, "b"=20, "c"=30)
        x
## When printing 'x', the names are shown without quotes.
##
## - New Problem:
##   How can we give elements names if the names are stored in another vector?
##   We are not going to write out 1,000,000 names in a 'c()' expression!
##
## Simple example
        x <- c(10,20,30)                  # Values
        x.names <- c("a","b","c")         # Names of values
## Here is how we can make 'x.names' the names of the elements of 'x':
        names(x) <- x.names
        x
## And ask for the names:
        names(x)
## It all works.
##
## - Some illustrative games with names:
        my.letters <- letters
        names(my.letters) <- LETTERS
        my.letters
## Now we can look up the lower case version of any upper case letter:
        my.letters["A"]
## Less trivial is this:
        names(my.letters) <- rev(letters)   # 'rev()' reverses the order.
        my.letters
## Now we can look up what the "mirror image letter" is.
## For example, "c" is third from the beginning;
## what is the third from the end?
        my.letters["c"]
        my.letters["x"]
        my.letters["k"]
        my.letters["p"]


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
##   This is on the CRAN website:  'CRAN' == Comprehensive R Archive Network
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


## * EXAMPLE PROBLEM 5: List all the functions in all the namespaces.
         for(ns in search()) { print(ls(ns)) }
##     Better:
         for(ns in search()) {
             print(paste("-----------------",ns,"---------------"))
             print(ls(ns)) }


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
             se <- s / sqrt(sum(!is.na(x)))                           #  "
             result <- round(c("mean"=m, "sdev"=s, "stderr"=se), dig) #  "
             return(result)                                           #  "  ; result
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
##    ------------------------------------------------
##   |                                                 |
##   |  funName  <-  function(...arguments...) {       |
##   |             ...function body...                 |
##   |             }                                   |
##   |                                                 |
##   |  - Arguments can be given default values.       |
##   |    In a function call these arguments need to   |
##   |    be used only if another value than the       |
##   |    default is needed.                           |
##   |                                                 |
##   |  - Arguments without default must be used in    |
##   |    a function call.                             |
##   |                                                 |
##   |  - Inside the body a temporary namespace is set |
##   |    up during the execution of the function.     |
##   |    It contains:                                 |
##   |    (1) the argument symbols assigned to COPIES  |
##   |        of the data structures shown in the      |
##   |        function call, and                       |
##   |    (2) symbols assigned during the execution of |
##   |        the body of the function.                |
##   |                                                 |
##   |  - As a matter of good programming style,       |
##   |    DO NOT USE symbols that are outside in the   |
##   |    global environment.                          |
##   |                                                 |
##   |  - The result of the last expression in         |
##   |    the body is returned by the function,        |
##   |    just as in any '{...}' expression.           |
##   |                                                 |
##    -------------------------------------------------
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
##   |  they can substitute for each other.          |
##   |                                               |
##    -----------------------------------------------
##
##   'smry2' and '(function(x) { c(mean=mean(x), sdev=sd(x), stderr=sd(x)/sqrt(length(x)) ) })'
##   evaluate to the same function object, hence where one can appear, so can the other.
##
## - In 'sapply()', 'lapply()' and 'apply()', it is common
##   to improvise little 'throw-away functions'.
##   Example:
         sapply(search(), function(ns) length(ls(ns)) )
##   This expression lists the number of symbols in all namespaces.
##   The next one sums them up:
         sum(sapply(search(), function(ns) length(ls(ns)) ))
##       [1] 2555
##   So the instructor has 2555 symbols defined in his R process.
##   Most of them are part of the R languge.  Defined by him are
##   this many symbols:
         length(ls(search()[1]))
##       [1] 152
##   [Time for cleanup...]
##
## - Examples of functions the instructor uses all the time:
         len <- length     # laziness
         si <- save.image  #   "
         su <- function(...) sort(unique(...))  # sort unique values -- very useful!
         rg.ex <- function(x, fac=1.1) { xrg <- range(x);  m <- mean(xrg);  (xrg - m)*fac + m }
         los <- function(pos=1) sort(sapply(ls(pos=pos), function(nam) object.size(get(nam))))
##   Comments:
##   . 'rg.ex()' can be used to add more space around a plot:
         x <- 1:1000;  y <- sin(x)
##     default: insufficient space around plotted object
         plot(x, y, pch=16, cex=.5)
##     stretch by 10%:
         xlim <- rg.ex(x);  ylim <- rg.ex(y)
         plot(x, y, xlim=xlim, ylim=ylim, pch=16, cex=.5)
##     stretch ylim by a factor of 4:
         xlim <- rg.ex(x,1);  ylim <- rg.ex(y,4)
         plot(x, y, xlim=xlim, ylim=ylim, pch=16, cex=.5)
##     stretch xlim by a factor of 4:
         xlim <- rg.ex(x,4);  ylim <- rg.ex(y,1)
         plot(x, y, xlim=xlim, ylim=ylim, pch=16, cex=.5)
##     Interesting patterns, aren't they?
##
##   . 'los()' lists all symbols of a namespace sorted by the
##       size of the assigned data in terms of bytes.
##       [The default 'pos=1' means 'search()[1], i.e., the first namespace in the search path.]
##       The function is useful in tracking down large data structures that
##       are no longer used yet take up space in the memory of the R process.
         los()
##


#================================================================
##
##
## * OTHER LOOPING CONSTRUCTS: 'repeat' and 'while'
##
##
#================================================================



