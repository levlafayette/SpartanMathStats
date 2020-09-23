# An Introductory Tutorial for R

* Used for the workshop, "Mathematical and Statistical Programming with HPC" by Research Computing Services, University of Melbourne

* Also derives from content in Lev Lafayette, "Mathematical Applications and Programming : R, Octave, and Maxima", Victorian 
Partnership for Advanced Computing, 2015

## Basics of R

* R is a high-level language and environment for statistical computing and graphics; an open-source variant of S. It is not designed 
for performance, but it can be used - and is quite popular - on HPC system. R is world's most widely used statistics programming 
language with its own journal, _The R Journal_, and online, open-access, refereed journal published by The R Foundation since 2009.

* R was originally developed by Ross Ihaka and Robert Gentleman at the University of Auckland, New Zealand, and first released in 
1992. It is currently developed by the R Development Core Team.

* The language includes input and output, loops, conditionals, recursive functions, data handling, operators for arrays, lists, vectors, 
and matrices. More than 2,000 extensions for data analysis.

## R on Spartan

* Interactive use of R should be conducted by launching an interactive job. R scripts can be automated through the job submission 
system. Don't run jobs on the head node.

* Start this tutorial by launching an interactive job. For example:

```
$ sinteractive --ntasks=2 --partition=snowy --time=05:00:00

* Versions of R are available via the old and new build systems. Load a new version of R. Note the extensive list of dependent software.

```
$ source /usr/local/module/spartan_old.sh
$ module -r avail "^R/"
$ source /usr/local/module/spartan_new.sh
$ module -r avail "^r/"
$ module list
$ module load r/4.0.0
$ module list
```

* Then enter R in interactive mode and view the installed extensions.

```
$ R
..
R version 4.0.0 (2020-04-24) -- "Arbor Day"
..
> installed.packages(lib.loc = NULL, priority = NULL, noCache = FALSE, fields = NULL, subarch = .Platform$r_arch)
```

* If an extension ("library") is desired, but not present consider options for (a) system-wide install or (b) personal install. See 
the file `/usr/local/common/R/LIBRARY`.

## An Overview of R

* In the interactive mode, commands are entered following the prompt. R is case-sensitive, so the object `Votes` is different to 
`votes`. Comments are prefixed with `#`. Multiple commands can be separated with `;`.

* The assignment directive is `<-`, `->` or `=`, so that `KewVotes2010 <- c(7750,19878,4879,576,NA)` will concatenate the values 
into a vector and store the results into the Object "KewVotes2010" and `RichmondVotes2010 <- c(13328,10174,8154,5017,NA)` into the 
Object "RichmondVotes2010".

* Note that variable names for Objects must start with a dot or a letter, and can only contain letters, numbers, underscore 
characters, and dots. Those that start with a dot must not be immediately followed by a number. Keywords (break, if, FALSE, for, 
repeat, TRUE etc) cannot be used for object names. The value NA represents "not available" and "NaN" is "Not a Number".

* Older versions of R use the underscore (_) as an assignment operator; as a result the period (.) was used extensively in variable 
names having multiple words. Current versions of R support underscore as a valid identifier but it is better practice to use period 
as word separators or CamelCase.

* Contents of current workspace can be eamined with the function `print(ls())`, which can operate on patterns as well (e.g., 
`print(ls(pattern="Votes"))`. Entering the name of the object will print the contents e.g., `mean(KewVotes2010)`, 
`sum(KewVotes2010)`. Values from a vector Object can be recalled with the vector index e.g., `RichmondVotes2010 [3]`. Arithematic 
functions can be performed on vectors, e.g., round(KewVotes2010[1]/RichmondVotes2010[1], 2). Object variables that start with a dot 
are hidden, but can be exposed with `print(ls(all.names = TRUE))`. Variables can be deleted by using the rm($Objectname). 

## Datatypes and Objects

* The datatype "Logical" for truth values (TRUE, FALSE); "Numeric" for real and integer values (e.g., 7750, 1.49), "Integer" with 
values suffixed with L (e.g., 19878L), "Complex" for those which combine numerics with imaginary numbers (e.g., 2 + 3i), "Character" 
for expressions represented in inverted commas (e.g., "7750", 'TRUE', "Hello World"), and "Raw", which holds raw byes. The value of 
a datatype can be determined with the class(($object)) function. e.g., `Value <- TRUE; print(class(Value))`, `Value <- "TRUE"; 
print(class(Value))`.

* Unlike most programming languages variables are not declared as some datatype. The variables are assigned to Objects, which can 
include multiple elements of the different datatypes. The datatype of the object can be determined by `print(class($Object))`. 
Object variables in R are dynamically typed; a variable's datatype can change within a program.

* A basic Object is the vector, previously illustrated.The list Object can contain different element datatypes like a vector, 
but also include vectors, functions and even other lists inside it. e.g., `votelist <- list(c(19878,7750,4879,576),1.49,mean); 
print(votelist)`.

* Factors are Objects that are created using a vector, storing the the distinct values of the elements in the vector as label, of 
datatype character, regardless irrespective of their type in the the input vector. Factors are created using the factor() function. 
The nlevels functions gives the count of levels. e.g., Create a vector, `Parties2010 <- 
c('ALP','LIB','GRN','OTH','NAT','LIB','GRN','OTH','NAT', 'GRN','ALP','NAT')`. Create a factor object `factor_Parties2010 <- 
factor(Parties2010)`. Print the factor `print(factor_Parties2010); print(nlevels(factor_Parties2010))`.

* A matrix is a two-dimenions dataset that can be created from a vector input. e.g., `KewRichmond2010 = matrix ( 
c(7750,19878,4879,576,NA,13328,10174,8154,5017,NA), nrow= 2, ncol = 5, byrow = TRUE); print(KewRichmond2010)`. Arrays are used to 
create a dataset of any number of dimensions using the dim attribute (e.g., `Parties <- array(c('ALP','LIB'),dim = c(3,3,2)); 
print(Parties)`)

* Data Frames are the most pervasive type of object in R. Most datasets includes in R packages are provided as Data Frames. Data 
Frames provide a collection of vectors of equal length. Data Frames are created using the data.frame() function. An example:

```
ElectionResults2010 <- data.frame (
	Parties = c('ALP','LIB','GRN','OTH','NAT'),
	Kew = c(7750,19878,4879,576,NA),	
	Richmond = c(13328,10174,8154,5017,NA),
	Hawthorn = c(7218,21036,5883,409,NA),
	Melbourne = c(13116,10281,11735,1635,NA)
	);
print(ElectionResults2010)
```

## Operators, Conditionals, Loops

* The R compiler understands a rich variety of arithmetic, relational, logical, assignment operators and more. Arithmetic Operators 
are performed on each element of a vector. For example, vector addition, vector subtraction, vector multiplication, vector division, 
vector modulus (remainder from division), vector quotient (integer division), and exponent. 

* Relational operators generate truth values when comparing between values; less than, greater than, less than or equal to, greater 
than or equal to, equal to, not equal to. 

* Logical operators follow a relatively standard notation (`!` for NOT, `&` for AND, `|` for OR) against all elements in a vector, 
but note that there are special operators for the first element only (`&&`, AND, `||`, OR). Also, zero is considered FALSE and all 
non-zero numbers are taken as TRUE.

* As previously mentioned, assignment operators are either leftward (`<-`, `<--`, `=`) or rightward (`->`, `-->`).

* In addition there is the range operator, creates the series of numbers in sequence for a vector (e.g., `v <- 11:19`), the in 
operator (`%in%`) used to identify whether an element is in a vector, and the transpose multiplier (`%*%`) which will multiple a 
matrix with its transpose.

```
KewVotes2010 <- c(7750,19878,4879,576,NA)
RichmondVotes2010 <- c(13328,10174,8154,5017,NA)
print(KewVotes2010+RichmondVotes2010)
print(KewVotes2010-RichmondVotes2010)
print(KewVotes2010*RichmondVotes2010)
print(KewVotes2010/RichmondVotes2010)
print(KewVotes2010%%RichmondVotes2010)
print(KewVotes2010%/%RichmondVotes2010)
DividedResult <- (KewVotes2010/RichmondVotes2010)
print(KewVotes2010^DividedResult)
print(KewVotes2010<RichmondVotes2010)
print(KewVotes2010>RichmondVotes2010)
print(KewVotes2010<=RichmondVotes2010)
print(KewVotes2010>=RichmondVotes2010)
print(KewVotes2010==RichmondVotes2010)
print(KewVotes2010!=RichmondVotes2010)
```

* Operator precedence is; exponent (`^`), unary minus, unary plus (`-x`, `+x`), modulus	(`%%`), multiplication, division 
(`*/`), addition, subtraction (`+-`), comparisions (`<`,`>`,`<=`,`>=`,`==`,`!=`), logical not (`!`), and (`&`, `&&`), or (`|`, 
`||`), rightward assignment (`->`, `-->`), leftward asssignment (`<-`, `<--`), leftward assignment (`=`).

* R offers branching through conditional `if-else` statements, the `ifelse()` function, and a `switch()` function. With if-else 
statements and the `ifelse()` function a conditional branch is established. With the `switch()` function an expression is tested 
against elements of a list. If the value evaluated from the expression matches item from the list, the corresponding value is 
returned.


```
if ((KewVotes2010[1]<=RichmondVotes2010[1]) print("ALP received more votes in Richmond than Kew")
if  ((KewVotes2010[1]<=RichmondVotes2010[1])) print("ALP received more votes in Richmond than Kew") else print("ALP received less votes 
in Richmond than Kew")
ifelse(KewVotes2010 > 5000, "major party", "minor party")
switch(2,"ALP","LIB","GRN","OTH","NAT")
```

* R has looping mechanism through `for`, `while`, `repeat` loops with `break` and `next`, and `repeat` options.  A `for` loop will 
iterate over values in sequence, perform a statement and exit at the end of the sequence. A `while` loop will iterate the loop 
statement as long as a conditional statement is true. A `repeat` loop will iterate over a block of code. A condition must be placed 
inside the body of the loop using the `break` statement to exit. A `break` or `next` statement in a loop invokes a condition to 
break out a loop, or to skip an iteration in favour of the next in the sequence.

```
TotalVotes <- 0; for(Votes in KewVotes2010[(1:4)]) TotalVotes <- TotalVotes + Votes; TotalVotes
# An easier method is: sum(KewVotes2010,na.rm=TRUE)
CanVotes <- 0; while (CanVotes < 5) {print(MelbourneVotes2010[(CanVotes)]); CanVotes <- CanVotes + 1}
CanVotes <- 1 ; repeat {print(MelbourneVotes2010[(CanVotes)]); CanVotes = CanVotes+1; if (CanVotes == 6){break}}
``` 

## Functions

* Functions are used to break up code into modular components. They are declared by reserved word `function`. The general syntax 
is: `$functionname <- function (argument) {statement}`. The formal arguments are those used within the function and the actual 
arguments are those used when calling the function, or the arguments can be explicitly named when called, partially or fully, or 
with default values in the formal arguments, which can be overwritten when called. For example:

```
pow <- function(x, y) {result <- x^y; print(paste(x,"raised to the power", y, "is", result))}
pow(6,2);
pow(y = 2, x = 6);
pow(2, x = 6);
pow <- function(x, y = 3) {result <- x^y; print(paste(x,"raised to the power", y, "is", result))}
pow(3)
pow(3,5)
```


