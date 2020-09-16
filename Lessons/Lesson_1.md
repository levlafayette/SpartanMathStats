-- *Slide* --
### Part 0: Goals for today
* Part 1: HPC Statistical Computation with R
* Part 2: HPC Numerical Computations with Octave
* Part 3: HPC Symbolic Computation with Maxima
* Part 4: Other Tools; Gretl, Julia, UNUMS
-- *Slide End* --

-- *Slide* --
### Part 0: Slide Repository
* A copy of the slides and sample code is available at: `https://github.com/UoM-ResPlat-DevOps/SpartanMathStats`
* Plenty of job submission examples at `/usr/local/common` 
* Helpdesk: `hpc-support@unimelb.edu.au`
-- *Slide End* --

-- *Slide* --
### Part 1: Basics of R
* R is a high-level language and environment for statistical computing and graphics; an open-source variant of S.
* R is world's most widely used statistics programming language with its own journal, The R Journal.
* Language includes input and output, loops, conditionals, recursive functions, data handling, operators for arrays, lists, vectors, and matrices. Lots of tools for data analysis.
-- *Slide End* --

-- *Slide* --
### Part 1: R on Spartan
* Interactive use of R should be conducted by launching an interactive job. R scripts can be automated through the job submission system. 
* There are several versions of R available using the old and new build systems and various extensions. Options for system-wide install or local install.
-- *Slide End* --

-- *Slide* --
### Part 1: An Oveview of R
* The help function is `help()`. To quit R use `q()`. R is case sensitive. Comments are prefixed with `#`. Multiple commands can be separated with `;`.
* The assignment variable is `<-`; combine with the `$Object <- function c($val1,$val2,$val3)`. Examine contents of workspace with ls()l Functions may include the object variable (e.g., `mean(Votes)`). 
-- *Slide End* --

-- *Slide* --
### Part 1: Input and Output
* 
-- *Slide End* --

-- *Slide* --
### Part 1: Data Structures and Transformations
-- *Slide End* --

-- *Slide* --
### Part 1: Probability
-- *Slide End* --

-- *Slide* --
### Part 1: Linear Regression
-- *Slide End* --

-- *Slide* --
### Part 1: R Scripts
-- *Slide End* --

-- *Slide* --
### Part 1: Parallel R
-- *Slide End* --

-- *Slide* --
### Part 2: Basics of Octave
-- *Slide End* --

-- *Slide* --
### Part 2: Data and Argumentation Types
-- *Slide End* --

-- *Slide* --
### Part 2: Matrix Mathematics
-- *Slide End* --

-- *Slide* --
### Part 2: Polynominals
-- *Slide End* --

-- *Slide* --
### Part 2: Conditionals and Loops
-- *Slide End* --

-- *Slide* --
### Part 2: Octave Scripts
-- *Slide End* --

-- *Slide* --
### Part 2: Parallel Octave
-- *Slide End* --

-- *Slide* --
### Part 3: Basics of Maxima
-- *Slide End* --

-- *Slide* --
### Part 3: Data and Argumentation Types
-- *Slide End* --

-- *Slide* --
### Part 3: Plots and Files
-- *Slide End* --

-- *Slide* --
### Part 3: Polynominals
-- *Slide End* --

-- *Slide* --
### Part 3: Special and Elliptic Functions
-- *Slide End* --

-- *Slide* --
### Part 3: Differentiation, Integration, and Differential Equations
-- *Slide End* --

-- *Slide* --
### Part 3: Matrices and Linear Equations
-- *Slide End* --

-- *Slide* --
### Part 3: Programming Maxima
-- *Slide End* --

-- *Slide* --
### Part 3: Parallel Maxima
-- *Slide End* --

-- *Slide* --
### Part 4: But Wait? There's More?
* Julia, programming for numerical analysis.
* Gnu Regression, Econometrics and Time-series Library (gretl).
* UNUMs; computation without error.
-- *Slide End* --

-- *Slide* --
### Part 4: Introducing Julia
* Data, Variables, Arithmetic and Boolean Functions
* Control Flow
* Ranges and Lists
-- *Slide End* --

-- *Slide* --
### Part 4: Introducing Julia
* Functions
* Custom Structures
* Input and Output
* Julia in Parallel
-- *Slide End* --

-- *Slide* --
### Part 4: Hansl with Gretl
* Strings and Scalars
* Matrices, Numerical Methods
* Datatypes and Control Flow
-- *Slide End* --

-- *Slide* --
### Part 4: Hansl with Gretl
* Datasets, Series, and Lists
* Estimation Methods
* Hansl and Gretl in Parallel
-- *Slide End* --

-- *Slide* --
### Part 4: Computer vs Mathematical Numbers
* Computers lie at alarming speeds
* IEEE number types
* Rounding errors, underflow, overflow
* Power consumption
-- *Slide End* --

-- *Slide* --
### Part 4: State Imprecions, Remove Errors 
* Unit in the Last Place (ULPs) and Ubits
* Gint ideas from interval arithmetic
* SORNS and Posits
* When wil this happen?
-- *Slide End* --

-- *Slide* --
<img src="https://raw.githubusercontent.com/UoM-ResPlat-DevOps/SpartanIntro/master/Images/hypnotoad.png" width="150%" height="150%" />
-- *Slide End* --
