
================ STATISTICS 470/503, 2015C, HOMEWORK 4 ================

                 YOUR NAME:  Brendan McManus

================================================================


INSTRUCTIONS:

- Due date and time:     TUESDAY, NOVEMBER 24, 7PM

- Read and follow the instructions carefully!

- Rename this file "Homework4-Lastname-Firstname.R" and upload
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


(1) Currency problems:


(1a) US currency figures are preceded by a '$' symbol and have commas
inserted every three digits.  Write a function 'curr2num()' whose only
argument is a vector of strings such as "$1,020,000" and which transforms
the strings into numbers such as '1020000'.
Define the string vector 'curr' by running the following line of code:

  curr <- c("$1,020,000", "$2,320,100", "$980,800", "$200,501", "$2,782,500")

Apply your function to it to turn it into a vector of numbers.

----------------------------------------------------------------
curr2num <- function(x) {
  as.numeric(gsub("[$,]", "", x))
}
curr <- curr2num(curr)
[1] 1020000 2320100  980800  200501 2782500
----------------------------------------------------------------


(1b) Read the currency conversion table at

  http://stat.wharton.upenn.edu/~buja/STAT-470-503/currency-conversion.txt

into a dataframe 'curr.conv'.  Use the function 'read.table()', not
'read.csv()', because the fields are separated by whitespaces, not
commas.  Check that the dataframe has dimensions 5 x 5 and five
currency abbreviations as column and row names.


----------------------------------------------------------------
curr.conv <- read.table("http://stat.wharton.upenn.edu/~buja/STAT-470-503/currency-conversion.txt", as.is=T, strip.white = T)
        USD     GBP     CAD     EUR     AUD
USD 1.00000 0.64795 1.30825 0.90859 1.40139
GBP 1.54332 1.00000 2.01905 1.40225 2.16280
CAD 0.76438 0.49528 1.00000 0.69451 1.07120
EUR 1.10061 0.71314 1.43987 1.00000 1.54238
AUD 0.71357 0.46236 0.93353 0.64835 1.00000
----------------------------------------------------------------


(1c) Read the 1,000 currency amounts at

   http://stat.wharton.upenn.edu/~buja/STAT-470-503/curr.txt

into a string vector named 'currs'.  Use 'readLines()'.  Check the
length and atomic type of 'currs', and print the first 10 and last 10
elements of the vector.


----------------------------------------------------------------
currs <- readLines("http://stat.wharton.upenn.edu/~buja/STAT-470-503/curr.txt")
head(currs, 10)
tail(currs, 10)
----------------------------------------------------------------



(1d) Write a function 'curr.ext()' to extract the three upper case
character currency codes in string vectors such as 'currs'.  The
function can assume that the strings are currency amounts prefixed by
a currency code as they appear in 'currs'.  It should work for
3-character upper-case currency codes other than the five that appear
in 'currs' as well.

Then apply your function to 'currs' and assign the result to
'currs.codes'.  Check with 'str()' that 'currs.codes' is likely to be
correct.  Check also whether all currency codes consist of exactly 3
capital letters.

----------------------------------------------------------------
curr.ext <- function(x) {
   substring(gsub("^ +", "", x), 1, 3)
}
currs.codes <- curr.ext(currs)
str(currs.codes)
grepl("[A-Z]", currs.codes) && !grepl("[a-z]^[0-9]", currs.codes) && (nchar(currs.codes) == 3)
----------------------------------------------------------------


(1e) Write a function 'curr.amt()' to extract the amount of currency
in numeric atomic type.

Apply your function to 'currs' and assign the result to 'currs.num'.
Check that it look ok, and that it has no missing values (you do not
need to worry about +-Inf, though).


----------------------------------------------------------------
curr.amt <- function(x) {
  curr2num(substring(gsub("^ +", "", x), 4, nchar(x)))
}
currs.num <- curr.amt(currs)
length(currs) == length(currs.num)
----------------------------------------------------------------


(1f) Write a function to convert a string vector such as 'currs' to US
dollars ('USD') using the table 'curr.conv'.  Your function should
have two arguments: the first is meant to be applied to 'currs', the
second should be the conversion table, defaulted to 'curr.conv'.
Round the results of the conversion to whole US dollars.  Apply your
function to 'currs' and assign the result to 'currs.USD'.  Show the
first 6 elements of the result.

PS: You are supposed to find out how to read the table 'curr.conv' and
how to use it for conversion of any of these currencies to USD.

----------------------------------------------------------------
curr2USD <- function(x, conv) {
  unlist(conv[rownames(conv)=="USD", curr.ext(x)] * (curr.amt(x)), use.names = F)
}
currs.USD <- curr2USD(currs, curr.conv)
head(currs.USD, 6)
[1] 7727179 1878873 4570371 5246646 1802608 5621419
----------------------------------------------------------------


(1g) Write the vector 'currs.USD' to a file named
'currency-amounts-in-USD.txt', one element per line,
but with the following requirements:

  [a] The dollar amounts have commas every three digits, as is usual.
  [b] There is a "$" dollar sign before the digits.
  [c] The numbers are right justified for easy reading,
      with spaces on the left if necessary.

These requirements can be addressed by using the following three functions:
  [a] the function 'prettyNum()' with the argument 'big.mark=","';
  [b] 'paste()';
  [c] the function 'format()' with the argument 'justify="right"'.

Then write the result to the file using 'writeLines()'.

Your code can be a one-liner (which will be hard to read), or you can
break up the code into several steps, or you can write a 'dplyr' pipe.

----------------------------------------------------------------
print_result <- prettyNum(currs.USD, big.mark=",")
print_result <- paste("$", print_result, sep="")
print_result <- format(print_result, justify="right")
writeLines(print_result, con="currency-amounts-in-USD.txt", sep="\n")
----------------------------------------------------------------


(1h) Read the file 'currency-amounts-in-USD.txt' back in with
'readLines()' and show the LAST SIX elements.  Wrap the function
'data.frame("curr"=...)' around the result for pretty printing.

----------------------------------------------------------------
read_in <- data.frame("curr"=readLines(con="currency-amounts-in-USD.txt"))
tail(read_in, 6)
            curr
995  $10,455,210
996   $8,602,803
997   $7,792,100
998   $9,312,100
999   $576,136.9
1000  $5,152,304

----------------------------------------------------------------


================================================================


2) Continuation of HW3 'gene':

It is now assumed that you are familiar or are able to re-familiarize
yourself with some of the variables.


2a) Create a new dataframe 'geneC' ('gene' cleaned) from 'gene' by removing
  [a] the case with 'chromosome G';
  [b] the cases where there is either no sibling or no proband in the family
      (see the variable 'familyDescription');
  [c] the cases where both proband and sibling have the mutation (see 'inChild');
  [d] the variables 9 and higher (they are of no use for us).
In other words, we want the clean cases where there is both an autistic
proband and a sibling in the family, but only one of them has a mutation.
We also want to get rid of some of the overhead variables.

Using 'with()', create a logical vector 'sel' for selecting according
to [a-c]; then create 'geneC'.
Try to make your code for 'sel' as readable as possible by spreading
the three conditions across three lines.

----------------------------------------------------------------
sel <- with(gene, 
            substring(location, 0, 1) != "G" & 
            familyDescription != "" & 
            (nchar(inChild) == 2))
geneC <- gene[sel, 1:9]
[1] 5604   9
----------------------------------------------------------------


2b) Add more variables to 'geneC' as follows:

  . 'geneC$Chrom' (char): the chromosome, as a one-or-two letter string
  . 'geneC$Loc' (int): the location on the chromosome, as an integer

       Instr.: It is ok if you do 'strsplit()' twice.  To extract the
       first and second elements from the resulting list, you can use
       'sapply()' with 'first()' and 'last()', respectively.
       Note that 'geneC$Loc' must be of type integer!

  . 'geneC$prob' (log): does the proband have the mutation (TRUE) or the sibling (FALSE)?
  . 'geneC$male' (log): is the child with the mutation male (TRUE) or female (FALSE)?

  . 'geneC$LGD' (log): 'likely gene-disrupting', TRUE/FALSE?

      Instr.: Geneticists determined that the following 'effectType's are 'likely gene-disrupting',
      meaning that the gene containing the mutation at this location has most likely been disabled:

          'splice-site','frame-shift','nonsense','noStart','noEnd','no-frame-shift-newStop'

      Write a regular expression for this purpose, and note that 'frame-shift' is a
      substring of 'no-frame-shift-newStop', so one needs to be careful to avoid a
      match of 'frame-shift' in 'no-frame-shift-newStop'.


----------------------------------------------------------------
geneC$Chrom <- sapply(strsplit(geneC$location, split=":"), "[", 1)
geneC$Loc <- sapply(strsplit(geneC$location, split=":"), "[", 2)
geneC$prob <- substring(geneC$inChild, 0, 1) == "p"
geneC$male <- substring(geneC$inChild, 2, 3) == "M"
geneC$LGD <- grepl("^splice-site$|^frame-shift$|^nonsense$|^noStart$|^noEnd$|^no-frame-shift-newStop$", geneC$effectType)
----------------------------------------------------------------


2d) Create two tabulations to answer the following questions:
  [a] Do autistic probands or their siblings have more mutations overall?
  [b] Same question restricted to the cases with LGD mutations.
Answer these questions without a statistical test, just by eye-balling
the tabulations.  Use 'with()'.

----------------------------------------------------------------
with(geneC, table(prob))
prob
FALSE  TRUE 
2245  3359 
Probands have more mutations overall.
with(geneC[geneC$LGD == TRUE,], table(prob))
prob
FALSE  TRUE 
182   386 
Probands restricted to cases with LGD mutations have more mutations overall.
----------------------------------------------------------------



2e) Chromosome plot for the LGD genes:

Use the chromosome numbers ('geneC$Chrom') as horizontal coordinates
(assigning chromosome "X" the position 23), and the location within
the chromosome ('geneC$Loc') as the vertical coordinate.

Additional instructions to raise the plot to near-professional quality:
- In 'plot()' use the character that looks like a '+' sign ('pch=3').
- In 'plot()' set 'xlab="Chromosome"' and 'ylab="Location (Mb)'.
- In 'plot()' suppress drawing the y-axis by using the arg 'yaxt="n"'.
- Draw the y-axis separately using the function 'axis()':
  . Learn about its arguments 'side=...', 'at=...', and 'labels=...'.
  . Call 'axis()' with the proper 'side' argument and set
    'at=seq(0,250,by=50)*1000000' and 'labels=seq(0,250,by=50)'.
    The latter will be coerced to strings.

Finally, after debugging the code, run it one more time, writing a PDF
file 'Chromosome_plot.pdf' with height and width 6 (inches).
Upload this file to Canvas as well.

----------------------------------------------------------------
pdf("Chromosome_plot.pdf", height=6, width=6)
x <- geneC$Chrom
x <- gsub("X", "23", x)
y <- geneC$Loc
plot(x=x, y=y, xlab="Chromosome", ylab="Location (Mb)", yaxt="n", pch=3)
axis(2, at=seq(0,250,by=50)*1000000, labels=seq(0,250,by=50))
dev.off()
----------------------------------------------------------------



================================================================


