
================ STATISTICS 470/503, 2015C, HOMEWORK 2 ================

                 YOUR NAME:  Brendan McManus

================================================================


INSTRUCTIONS:

- Due date and time:     TUESDAY, SEPTEMBER 29, 7PM

- Rename this file "Homework2-Lastname-Firstname.R" and upload
  it with your solutions to Canvas.

- Edit this file in RStudio and insert your solutions below between
the dashed lines.  Answer only what is asked for.  If it says
'... (code)', replace it with code but no explanations.  If it says
'Result: ...' replace '...' with the results from R.  If it says
'... (explain in 1 sentence)' replace this with a one-sentence
explanation.


================================================================
            EDIT BELOW BETWEEN DASHED LINES
================================================================


(1) Create a modified version of 'LastNamesStat470' defined in class
(Chapter0.R) as follows.  Append the number of characters to each of
the last names so the first element looks like this:
"Buja (#chars=4)", and the subsequent elements correspondingly.  Make
sure that your solution looks exactly this way, e.g., no extra spacing
characters before and ofter "=".
------------------------------------------
  paste(LastNamesStat470, " (# chars=", nchar(LastNamesStat470), ")", sep="")
------------------------------------------


================================================================


(2) Generate a string vector of length 26^2 containing all possible
combinations of uppercase and lowercase letters of the alphabet:
"A-a", "A-b", "A-c", ..., "Z-y", "Z-z".  Make sure your solution is in
this order and NOT in the order "A-a", "B-a", "C-a", ...  (Hint: Use
'rep()' creatively.)
Special requirement: Do NOT use the number 26 in your code.  Write
your code so it would work no matter what the lengths of the alphabets
are, and even if the upper and lower case alphabets were of different
lengths.
------------------------------------------
x <- paste(rep(LETTERS, each=length(LETTERS)), "-", letters, sep="")
------------------------------------------


================================================================


(3) Recoding exercise: Below we define a vector 'asd', which is part
of a longer column in a genetics dataset that was published in 2014 in
the journal 'Nature'.  The vector shows for 20 children whether they
are autistic (first letter "p" for "autistic proband") or the sibling
of an autistic proband (first letter "s").  The second letter
indicates the gender ("F" or "M").  From 'asd' generate two dummy
variables as follows:
- 'asd.proband' contains 1 for autistic proband, 0 else
- 'asd.female'  contains 1 for female, 0 else.
Make sure the two dummy variables are numeric.
------------------------------------------
asd <- c("pM","pM","sF","sM","sF","sM","pM","pM","pM","pM",
         "pM","pF","pF","pM","pM","pM","sM","pM","sM","sF")
asd.proband <- 0+(substring(asd, 1, 1)=="p")
asd.female  <- 0+(substring(asd, 2, 2)=="F")
------------------------------------------


================================================================


(4) Use 'help()' for the function 'sort()' to learn how to sort in
descending order.  (Do not show the help page.)  Show how to do this
on the data 'Salary' in Chapter0.R.  Show two versions of the same,
the second version being as short as possible by making use of a
convention for named arguments in functions.
------------------------------------------
sort(Salary, decreasing=TRUE)
sort(Salary, T)
------------------------------------------


================================================================


(5) Show the result and explain concisely the behaviors for the
following lines of code:


(5a)
sum(is.na(c(0, 1, 0/0, 3)))
------------------------------------------
Result: 1
This indicates that one of the numbers is missing or not available from the vector.
------------------------------------------


(5b)
sum(is.na(c("a", 1, 0/0, 3)))
------------------------------------------
Result: 0
This indicates that none of the numbers are available, 
because they are all inputted as strings (the first input is a string).
------------------------------------------


(5c)
sum(is.na(c("a", 1, NA, 3)))
------------------------------------------
Result: 1
Everything is inputted as a string except for NA (which is distinct from the string "NA" and 
returns TRUE for is.na), so the result is 1.
------------------------------------------


================================================================


(6) We would like to turn the word "par" into "rap" with single-letter
substitutions "p" -> "r" and "r" -> "p".  Below we define 'word' to
contain "par", and we give three 'solutions', of which only one works.
Explain in each case why it works or does not work.

word <- "par"      # Execute this first !!!


(6a)
gsub("p","r", gsub("r","p", word))
------------------------------------------
The inner "gsub" replaces the "r" with "p", giving us "pap".
The outer "gsub" replaces "p" with "r", giving us "rar".
------------------------------------------


(6b)
sub("r","p",  sub("p","r", word))
------------------------------------------
The inner "sub" replaces the first "p" with "r", giving us "rar".
The outer "sub" replaces the first "r" with "p", giving us "par".
------------------------------------------


(6c)
sub("p","r",  sub("r","p", word))
------------------------------------------
The inner "sub" replaces the first "r" with "p", giving us "pap".
The outer "sub" replaces the first "p" with "r", giving us "rap".
------------------------------------------


================================================================


(7) Task: Recode 'StudentGenders' as "Y"/"N" so "Y" means 'female' and
"N" means 'male'.  That is, recode "female" -> "Y" and "male" -> "N"
using the function 'sub()'.  Give two solutions, one that works and
one that does not.  Explain why.


(7a) Solution that DOES work:
------------------------------------------
StudentFemaleYN <- sub("male", "N", sub("female", "Y", StudentGenders))
------------------------------------------
StudentFemaleYN
[1] "N" "N" "Y" "N" "Y" "Y" "Y" "N" "Y" "Y" "Y" "N" "N" "N" "Y" "N" "Y" "Y" "Y" "Y"
------------------------------------------
This replaces all instances of "female" with "Y" and then all instances of "male" with "N", in this order
as "male" is a substring of "female". This gies us the solution to 7b.
------------------------------------------


(7b) Solution that DOES NOT work:
------------------------------------------
StudentFemaleYN <- sub("female", "Y", sub("male", "N", StudentGenders))
------------------------------------------
StudentFemaleYN
 [1] "N"   "N"   "feN" "N"   "feN" "feN" "feN" "N"   "feN" "feN" "feN" "N"   "N"   "N"   "feN" "N"   "feN" "feN" "feN"
[20] "feN"
------------------------------------------
"male" is a substring of "female", so replacing "male" first removes all "female" strings from the vector
(and replaces them with "feN". 
------------------------------------------


================================================================


(8) LOGIC


(8a) Can one write 'all(x,y,z)' or does one have to write
'all(c(x,y,z))'?  Same question for 'any()'.
------------------------------------------
Both 'all()' and 'any()' take in zero or more 
logical vectors, so there is no need to combine the values first.
------------------------------------------


(8b) Define two logical vectors 'x' and 'y' of length 4 such that all
possible combinations of TRUE and FALSE appear going down the
positions in 'x' and 'y'.  (This can be done in many ways; just choose
one way.)
------------------------------------------
x <- c(TRUE, TRUE, FALSE, FALSE)
y <- c(TRUE, FALSE, TRUE, FALSE)
------------------------------------------


(8c) Which pairs of expressions always do the same?
    (!x) | (!y)
    (!x) & (!y)
    !(x | y)
    !(x & y)
------------------------------------------
'(!x) | (!y)' and '!(x & y)' always do the same.
'(!x) & (!y)' and '!(x | y)' always do the same.
------------------------------------------
[Your correct choices represent "De Morgan's Laws of Logic".]


(8d) Argue that executing the statements in (8c) with 'x' and 'y'
from (8b) prove "De Morgan's Laws".  That is, if two of the expressions
produce the same results with 'x' and 'y', they will produce the same
results even when applied to logical vectors other than 'x' and 'y'
(e.g., logical vectors of length 1,000,000 each).
------------------------------------------
The first statement essentially says that not (x and y)
is equal to (not x) or (not y). The second statement
essentially says that not (x or y) is equal to
(not x) and (not y). These represent "De Morgan's Laws of
Logic". We can use 'x' and 'y' as combined, these represent
all possible cases of booleans (TT, TF, FT, FF). If we use any
other types of logical vectors for 'x' and 'y', they will boil
down to these four boolean results.
------------------------------------------


(8d) Among the following four expressions, are there any two
that always do the same?
    all(u,v,w)
    any(u,v,w)
    u & v & w
    u | v | w
------------------------------------------
'all(u,v,w)' and 'u & v & w' will always do the same.
'any(u,v,w)' and 'u | v | w' will always do the same.
------------------------------------------


(8e) Among the following four expressions, are there any two
that always do the same?
    all(!z)
    any(!z)
    !all(z)
    !any(z)
------------------------------------------
'all(!z)' and '!any(z)' will always do the same.
'any(!z)' and '!all(z)' will always do the same.
------------------------------------------
[Your correct solution represents a more general version of
"De Morgan's Laws".]


(8f) Using the 'Salary...' vectors, check whether everybody of age 30
or over makes at least $50,000.  Go about it by checking whether there
are violations: are there any who are 30 or over and make less than
$50,000?  Then negate this expression to get the answer to the
original question.
------------------------------------------
!((Salary.age < 30) & (Salary < 50000))
------------------------------------------


================================================================


(9) Plotting Salary vs Salary.age:

Preliminary instructions:

- Learn about the arguments 'xlim' and 'ylim' to 'plot()' to provide
explicit control over the horizontal and vertical plotting ranges.
Unfortunately, 'help(plot)' is not helpful.  Instead, use
'help(plot.default)'.  [As we will see later, 'plot()' is a
'generic function' that does different things depending on the
arguments it is given.  When it is given 'x' and 'y' arguments,
'plot()' is really executed by 'plot.default()'.]

- Learn about the function 'range()'.

There is nothing to be shown for the above.  Here are the problems to
solve:


(9a) Plot Salary (vertical) vs Salary.age (horizontal) with additional
2 years of margin for 'Salary.age' on both sides, and an additional
$1,000 for 'Salary' also on both sides.  If, for example, 'Salary' had
a range from 40,000 to 60,000, make 'ylim' a vector of length 2 with
values 39,000 and 61,000.  Write the expression as a single call to
'plot()'.
(Also, use as plotting symbol a filled circle with 'pch=16'.)
(You may spread the expression over two lines or even three if you like,
but it should be just one expression.)
------------------------------------------
plot(x=Salary.age, y=Salary, pch=16, 
     ylim=c(min(Salary) - 1000, max(Salary) + 1000), 
     xlim=c(min(Salary.age) - 2, max(Salary.age) + 2))
------------------------------------------


(9b) Redo the plot of (9a), but change the salary units from $1 to
$1,000.  This time use two R expressions as follows:
------------------------------------------
Salary.in.1000 <- Salary / 1000
plot(x=Salary.age, y=Salary.in.1000, pch=16, 
     ylim=c(min(Salary.in.1000) - 1, max(Salary.in.1000) + 1), 
     xlim=c(min(Salary.age) - 2, max(Salary.age) + 2))
------------------------------------------


(9c) The function 'plot()' has further optional arguments called
'xlab' and 'ylab' to take control of what is shown as axis labels.
Redo the plot of (9b) and replace the default labels with "Age" and
"Annual Salary in $1,000", respectively.
------------------------------------------
plot(x=Salary.age, y=Salary.in.1000, pch=16, xlab='Age', ylab='Annual Salary in $1,000',
     ylim=c(min(Salary.in.1000) - 1, max(Salary.in.1000) + 1), 
     xlim=c(min(Salary.age) - 2, max(Salary.age) + 2))
------------------------------------------


(9d) Add labels to the points showing the first names of the
employees.  Place the labels above the points (see the optional
argument 'pos=...' to 'text()') and show them at 60% of the default
size using 'cex=...' ('cex' stands for 'character expansion').
------------------------------------------
text(x=Salary.age, y=Salary.in.1000, labels=names(Salary), pos = 3, cex=.6)
------------------------------------------


(9e) Leave the plot created in (9c) and (9d) as is and modify it as
follows: Color the points of male employees over 30 red by
overplotting the points from (9c).  Do this in two steps as in class:
define a logical selection vector 'sel' and then use 'points()', here
with the optional argument 'col="red"' for red color.  Also, make the
red points 50% larger with 'cex=...'.  Finally make sure the red
points are filled, not open circles.
------------------------------------------
sel <- (Salary.gender=="male" & Salary.age > 30)
points(Salary.age[sel], Salary.in.1000[sel], pch=16, col="red", cex=1.5)
------------------------------------------


(9f) Add a title to the existing plot using the function 'title()'
with argument 'main=...'.  Make the title as follows:
"Salary as a Function of Age"
------------------------------------------
title(main="Salary as a Function of Age")
------------------------------------------


================================================================
