
================ STATISTICS 470/503, 2015C, HOMEWORK 3 ================

                 YOUR NAME:  Brendan McManus

================================================================


INSTRUCTIONS:

- Due date and time:     MONDAY, OCTOBER 26, 7PM

- Rename this file "Homework3-Lastname-Firstname.R" and upload
  it with your solutions to Canvas.

- Edit this file in RStudio and insert your solutions below between
the dashed lines.  Answer only what is asked for.  If it says
'... (code)', replace it with code but no explanations.  If it says
'... (Show results)' replace it with the results from R.  If it says
'... (explanation)' replace this with a one-sentence explanation.


================================================================
           EDIT YOUR SOLUTIONS BETWEEN DASHED LINES
================================================================


(1) Genetics dataset:

(1a) Find the following article in the online Penn library:

  Nature, Volume 515, Issue 7526
  Ivan Iossifov et al.
  "The contribution of de novo coding mutations to autism spectrum disorder"

At the very bottom of the online article there is a header
"Zip files".  Below it is a link to "Supplementary Data (1.6 MB)".

----------------------------------------------------------------
(Nothing to report, just do it.)
----------------------------------------------------------------


(1b) Download this file and place it in the working directory of your
R process.  (See the notes for finding the working directory.  Btw,
'directory' is the Unix term for 'folder'.)

----------------------------------------------------------------
getwd()
[1] "/Users/brendanmcmanus/Desktop/school/stat_470/code/homework_3"
----------------------------------------------------------------


(1c) After downloading the zip file in the appropriate directory,
confirm that the file is there using the function 'dir()'.  First get
a glimpse of the filename by hovering over the link in the webpage of
the article.  You can then give a small piece of the name to
'dir(pattern="...")' and it will confirm the existence of the file by
returning a string vector with all filenames that contain whatever you
put in "...".

----------------------------------------------------------------
dir(pattern="na")
[1] "nature13908-s2.zip"
----------------------------------------------------------------


(1d) The file is compressed in the 'zip' format.  You can 'unzip' this
file using the R function 'unzip()'.  Just give it the full file name
as shown by 'dir()'.

[A nice thing for Windows users is that 'unzip()' makes it unnecessary
to acquire 'WinZip', the commercial software for uncompressing files.]

----------------------------------------------------------------
  unzip(dir(pattern = "na"))
----------------------------------------------------------------


(1e) Your 'unzip()' expression will have created a directory of the
same name as the zip file but without extension.  Look again with
'dir(pattern="...")' and show what you see this time.

----------------------------------------------------------------
dir(pattern="na")
[1] "nature13908-s2"     "nature13908-s2.zip"
----------------------------------------------------------------


(1f) Show the files that 'unzip()' placed in the new directory.  To
this end use 'dir(path="...")' where "..." needs to be the string
containing the exact name of the new directory.

[This is easy in RStudio with 'name completion': start typing the code
into the R Console, and after you enter the first two (say) letters of
the directory name, hit 'Tab', and Rstudio will offer a drop-down menu
with completions.  This avoids misspelling.  Of course you also avoid
misspellings by copy/pasting the appropriate string from (1e).]

[If you happen to ask a Windows Explorer with

   Right-click on the path field > Copy address as text

for copy/pasting the folder path, it will separate folder names with
back slashes; replace them with forward slashes "/", which is Unix
style and required for paths in R.  You can ignore this comment, but
in general this is an alternative way to copy/paste directory paths.]

----------------------------------------------------------------
  dir(path="nature13908-s2/")
[1] "Supplementary Table 1.xlsx"  "Supplementary Table 10.xlsx" "Supplementary Table 12.docx" "Supplementary Table 2.xlsx" 
[5] "Supplementary Table 5.xlsx"  "Supplementary Table 6.xlsx"  "Supplementary Table 7.xlsx"  "Supplementary Table 9.xlsx" 
----------------------------------------------------------------


(1g) Among the files in this directory is "...Table 2.xlsx", which is
the one we will be focusing on.  Convert this file to a csv file (see
notes).  Confirm that the csv file exists with another call to

  dir(pattern="...", path="...")

where the first argument looks for file type csv and the second
argument for the same directory as in (1f).

[Now you know how to use 'dir()' to look in directories for files
whose filenames contain a specific substring.]

----------------------------------------------------------------
dir(pattern = "*csv", path="nature13908-s2/")
[1] "Supplementary Table 2.csv"
----------------------------------------------------------------


(1h) Read the csv file into a R dataframe named 'gene'.  You will have
to give 'read.csv()' the exact path to the file, meaning the
foldername and the filename separated by "/".

[In 'read.csv()' do not forget to suppress conversion of character
columns to type 'factor'.]

----------------------------------------------------------------
  gene <- read.csv("nature13908-s2/Supplementary Table 2.csv", as.is=T, header = T, stringsAsFactors = T)
----------------------------------------------------------------


================================================================


(2) Now that we have a (hopefully) valid dataframe 'gene', let us
examine it and look at a couple of its variables.


(2a) What are the dimensions of 'gene' and what are the column names?

----------------------------------------------------------------
dim(gene)
[1] 5648   16
colnames(gene)
[1] "familyId"          "location"          "variant"           "vcfVariant"        "inChild"           "fromParent"        "effectGene"        "effectType"       
[9] "familyDescription" "CSHL"              "YALE"              "UW"                "IossifovWE2012"    "EichlerWE2012"     "StateWE2012"       "EichlerTG2012"  
----------------------------------------------------------------


(2b) Examine the column 'location': Its values are strings that tell
the chromosome of a mutation in the first one or two characters before
the separator ":", and a location within the chromosome after ":".
The chromosome should be an integer in 1:22 or the letter 'X'.

Extract the first letter of 'location' and tabulate it with 'table()'.

----------------------------------------------------------------
  table(gsub(":.*", "", gene$location))
1         10         11         12         13         14         15         16         17         18         19          2         20         21         22 
552        210        376        302         77        180        194        260        314         81        382        443        133         73        122 
3          4          5          6          7          8          9 GL000209.1          X 
358        210        244        264        285        186        238          1        163 
----------------------------------------------------------------


(2c) Based on (2b), you should find something wrong.  Find the row in
'gene' where the error occurs.  To this end use the 'substring()'
expression from (2b) and form a logical expression that identifies the
error.  Put this expression in the function 'which()' to identify the
location of the error.  Show code for printing the row in 'gene' that
contains the error.  Describe the nature of the error.

[In principle we could now fix the data, but the error will not cause
problems, so let us leave it as is.]

----------------------------------------------------------------
  which(gsub(":.*", "", gene$location) == "GL000209.1")
[1] 5648
gene[which(gsub(":.*", "", gene$location) == "GL000209.1"),]
familyId         location variant            vcfVariant inChild fromParent effectGene  effectType familyDescription   CSHL YALE UW IossifovWE2012 EichlerWE2012
5648    13861 GL000209.1:27369  del(1) GL000209.1:27368:AC:A      pM               KIR2DL2 frame-shift                pM strong                                     
StateWE2012 EichlerTG2012
5648        
We have the location of a chromosone not labeled with the correct format.
----------------------------------------------------------------


(2d) Make up a new logical variable 'chromX' that contains TRUE or
FALSE according to whether 'location' begins with a letter "X" or not.
Then tabulate this variable with the function 'table()', show the
results, and finally remove 'chromX'.

----------------------------------------------------------------
  chromX <- gsub(":.*", "", gene$location)=="X"
table(chromX)
FALSE  TRUE 
5485   163 
remove(chromX)
----------------------------------------------------------------


(2e) Do the same as in (2d), but with a single expression, without
introducing an intermediate variable 'chromX'.

----------------------------------------------------------------
  table(gsub(":.*", "", gene$location)=="X")
----------------------------------------------------------------


(2f) Do the same thing as in (2d), but using 'with()': Inside the
second argument, define 'chromX', then tabulate it.  This version does
not create a permanent vector 'chromX'; it disappears after
'with(...,...)' has completed execution.

----------------------------------------------------------------
  with(gene, {chromX=gsub(":.*", "", location)=="X"; table(chromX)})
----------------------------------------------------------------


(2g) Do something similar as in (2d) but with a 'dplyr' pipe in two steps:

- Generate a new dataframe 'gene.ext' (extension of 'gene') that
  has a new variable 'chromX' as described in (2d).
  Finish the pipe with an assignment of the form '-> gene.ext'.

  ['dplyr' pipes are an occasion to use the reverse direction for the
  assignment arrow: Because the flow of the pipe is left to right, it is
  natural to assign the result of the pipe left to right as well.]

- Tabulate 'chromX' in 'gene.ext' using a pipe that uses 'group_by()'
  and 'summarize()'.

----------------------------------------------------------------
    library(dplyr)
  
  mutate(gene, chromX=gsub(":.*", "", location)=="X") %>% tbl_df -> gene.ext
  
  gene.ext %>% group_by(chromX) %>% summarize(length(chromX))
  
  chromX length(chromX)
  (lgl)          (int)
  1  FALSE           5485
  2   TRUE            163
----------------------------------------------------------------


(2h) Consider next the variable 'inChild': Tabulate it as is.
Give two versions: one using brackets, and one using 'with()'.

----------------------------------------------------------------
table(gene[,"inChild"])
table(with(gene, inChild))
pF pFsF pFsM   pM pMsF pMsM   sF   sM 
510    2    2 2850   19   20 1218 1027 
----------------------------------------------------------------


(2i) Some explanations of what you found in (2h): The mutations are
shown per family, so it can occur that the same mutation is observed
in the autistic child (called 'proband') as well as the unaffected
sibling.  So when you see a label 'pMsF', it means the mutation was
observed in the male proband ('pM') AND the female sibling ('sF').
These double-occurrences of mutations are strange because they are
'de novo', that is, not inherited.  They are rare, so we will exclude
them for now.

Task: Determine the ratio of male probands to female probands,
excluding the double-occurrences.  Give an interpretation of the form
'for each autistic female, there are ...'.

[Use 'with()' for concise code.]

----------------------------------------------------------------
  table(with(gene, inChild == "pM"))["TRUE"]/table(with(gene, inChild == "pF"))["TRUE"]
TRUE 
5.588235 
For each autistic female, there are 5.58 times as many autistic males.
----------------------------------------------------------------


================================================================


(3) HOW MANY FUNCTIONS ARE THERE IN YOUR R WORLD?

Count how many R functions there are on your computer, first for the
namespace "package:base", then for all namespaces together.

Solve this problem like a C or Java programmer with 'for()' loops, not
'sapply()'.  For the first problem (namespace "package:base") you will
need one 'for()' loop, and for the second problem (all namespaces
together) you will need two nested 'for()' loops.

This problem is more complex than just counting objects in the
namespaces because we can not just count names but have to ask the
objects whether they are functions or not.  To this end you will need
the function 'get("...")' to get the object that is pointed at by the
string name "...".  For example,

    tmp <- get("mean")

assigns a copy of the function 'mean' to the symbol/name 'tmp'.  You
can now do with 'tmp' whatever you can do with 'mean':

    tmp(1:10)

Our goal, though, is asking whether the object is a function:

    is.function(tmp)

Yes, it is.  Our larger goal is to sum up all such TRUE and FALSE
values (coerced to 1 and 0) for all symbols/names in a namespace in
order to obtain a count of the functions.


(3a) Count how many functions there are in the namespace
"package:base": Initialize a counter 'num.functions' to zero.  Then
loop over the names in "package:base" and add TRUE/FALSE to
'num.functions' obtained from 'is.function(get(n))', where 'n' is the
looping variable.

----------------------------------------------------------------
num.functions <- 0;
for (i in ls("package:base"))
  num.functions <- num.functions + is.function(get(i))
[1] 1193
----------------------------------------------------------------


(3b) Count how many functions there are in all namespaces obtained
with 'search()': Wrap another loop around the loop in (2a) replacing
"package:base" with an outer looping variable 'ns'.  Make sure to
initialize 'num.functions' ouside the loops.

----------------------------------------------------------------
num.functions <- 0;
for (ns in search())
  for (i in ls(ns))
    num.functions <- num.functions + is.function(get(i))
[1] 2451
----------------------------------------------------------------


================================================================


(4) PLOTTING EXERCISE:

Plot the time series of the Philly temperature data in various ways.


(4a) Preliminary step: Turn the matrix 'phillyTemp.mat' into a data
structure of class 'ts' (time series).  This class is a type of
composite data structure to accommodate time-dependent data that are
observed on an equispaced time grid.  Our time unit is one year, and
we observe temperatures 12 times per year.  We start in 1950 on the
first month, and end in 1999 on the last month.  You will need to give
the function 'ts()' the following named arguments: 'frequency=12',
'start=c(1950,1)' and 'end=c(1999,12)'.  In addition, the first
argument should be the time series as a vector in time order.

Here is the hitch: You can not give 'phillyTemp.mat' to 'ts()' as the
first argument.  You first need to string it out to a vector.  Note
that sequential months are stored by row, whereas matrices are stored
by columns, so that 'as.vector(phillyTemp.mat)' would not string it
out the right way.  Find out what is missing.

Give the correct result from 'ts()' the name 'phillyTemp.ts'.

----------------------------------------------------------------
  phillyTemp.ts <- ts(as.vector(t(phillyTemp.mat)), frequency = 12, start = c(1950,1), end = c(1999,12))
----------------------------------------------------------------


(4b) Plot the whole series naively, by passing 'phillyTemp.ts' to
'plot()' as the single coordinate argument.  Note that the plot
function gets something right: labeling of the time axis, for example.
Add a sensible vertical axis label.

----------------------------------------------------------------
  plot(phillyTemp.ts, ylab = "Temperature")
----------------------------------------------------------------


(4c) Plot just the first five years of the series.  To this end,
re-use the code of (4b), but add a suitable 'xlim=...' argument.
Important: Plot the whole series as in (4b), even though we want to
see only part of it!  The 'xlim' argument will do the job of showing
only the part we want to see.

----------------------------------------------------------------
  plot(phillyTemp.ts, ylab = "Temperature", xlim = c(1950,1955))
----------------------------------------------------------------


(4d) Animate the code of (4c): Put it in a 'for()' loop, and run it
over and over, incrementing 'xlim' on both ends by a small amount,
e.g., 0.05.

(Recall you can stop the animation anytime by hitting 'ESC'.  Also,
use the flush and sleep functions as in the notes.)

----------------------------------------------------------------
  periods <- seq(0,5/2, by=.05)
  for (j in periods) {
    plot(phillyTemp.ts, ylab = "Temperature", xlim = c(1952.5-j,1952.5+j)) 
    dev.flush(); Sys.sleep(0.2)
  }
----------------------------------------------------------------


(4e) Why does the y-axis scale not change during the animation?  We
are seeing only part of the time series, so we should expect some
mild bumping around of the vertical min and max, right?

----------------------------------------------------------------
The max and the min is taken from the entire time series, thus
there is not any jumping around.
----------------------------------------------------------------


(4e) Next we want to aggregate the time series to quarterly averages.
To this end, use the function 'aggregate()' applied to
'phillyTemp.ts' with arguments 'nfreq=4' and 'FUN=mean'.  Name the new
time series 'phillyTemp.quart' and plot it with a meaningful vertical
axis label.

----------------------------------------------------------------
phillyTemp.quart <- aggregate(phillyTemp.ts, nfrequency = 4, FUN = mean)
plot(phillyTemp.quart, ylab="Temperature")
----------------------------------------------------------------


(4f) Finally plot in one graph all Januaries as a time serie trace,
all Februaries, ..., all Decembers.  That is, show 12 traces (curves),
the first connecting Jan 1950, Jan 1951, ..., Jan 1999, the second
connecting Feb 1950, Feb 1951, ..., Feb 1999.

To this end, we would like to select the time series at positions
c(1,13,25,...589) to get all Januaries, then c(2,14,26,...,590) to get
all Februaries, ...  To achieve this,

- set up a loop over 1:12 to define the beginning month of each trace;

- in the body of the loop define

  . a selector vector of positive integers 'sel <- ...' using 'seq()'
    with arguments 'from=', "by=", "len=";

  . define the horizontal coordinates of the traces using the function
    'time()' applied to 'phillyTemp.ts' to extract the times and then
    select from them using 'sel';

  . define the vertical coordinates of the traces by simply selecting
    from 'phillyTemp.ts' using 'sel';

  . finally plot the current trace using 'lines()' using line width 2
    and the color in sequence from
    c("black","violet","blue","turquoise","green","yellow","orange","brown","red","purple","gray","gray70")

----------------------------------------------------------------
colors <- c("black","violet","blue","turquoise","green","yellow","orange","brown","red","purple","gray","gray70")
plot(x=0, y=0, xlab="Year", xlim=c(1950,1999), ylab="Temperature", ylim=c(rg.ex(phillyTemp.ts)[1], rg.ex(phillyTemp.ts)[2]))
for (i in 1:12) {
  sel <- seq(from=i, by=12, len=50)
  x <- time(phillyTemp.ts)[sel]
  y <- phillyTemp.ts[sel]
  lines(x, y, lwd=2, col=colors[i])
}
----------------------------------------------------------------


================================================================
