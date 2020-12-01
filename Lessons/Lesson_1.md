-- *Slide* --
### Part 0: Goals for today
* Part 1: Simple Tools: expr, bc, datamash, etc.
* Part 2: Statistical Computation with R
* Part 3: Numerical Computations with Octave
* Part 4: Others: Maxima, Gretl, Julia, UNUMS
-- *Slide End* --

-- *Slide* --
### Part 0: Slide Repository
* A copy of the slides and sample code is available at: `https://github.com/levlafayette/SpartanMathStats`
* Plenty of job submission examples at `/usr/local/common` 
* Helpdesk: `hpc-support@unimelb.edu.au`
-- *Slide End* --

-- *Slide* --
### Part 1: Why Simple Tools?
* Quicker and easier that invoking a fully-fledged environment. 
* Useful in an interactive enviroment, in scripts, or job submission scripts.
* Examples includes bash, expr, bc, awk, and datamash
* Resource in `/usr/local/common/Math`
-- *Slide End* --

-- *Slide* --
### Part 1: Expr
* The command `expr` evaluates an expression of strings or integers writes to standard output.
* Can use a variety of the usual operators on integers.
* String operations include: length, index, and matching count with regex
* Useful with variables and scripts or job scripts.
-- *Slide End* --

-- *Slide* --
### Part 1: bc
* The command `bc`, "basic calculator", performs extensive calculation functions. 
* Performs arithemetic, increment, assignment, relational, operations.
* Also has logical, conditional, iterative, and functions!
-- *Slide End* --

-- *Slide* --
### Part 1: datamash
* The utility `datamash`, performs data operations on numerical and string data. 
* Well-integrated with other Linux/POSIX tools, undergoing significant development.
* Extensive operations on files, numerical and textual groups, and statistical data. 
-- *Slide End* --

-- *Slide* --
### Part 2: Basics of R
* R is a high-level language and environment for statistical computing and graphics; an open-source variant of S.
* R is world's most widely used statistics programming language with its own journal, The R Journal.
* Language includes input and output, loops, conditionals, recursive functions, data handling, operators for arrays, lists, vectors, and matrices. Lots of tools for data analysis.
-- *Slide End* --

-- *Slide* --
### Part 2: R on Spartan
* Interactive use of R should be conducted by launching an interactive job. R scripts can be automated through the job submission system. 
* There are several versions of R available using the old and new build systems and various extensions. Options for system-wide install or local install.
* Good resources in `/usr/local/common/R`
-- *Slide End* --

-- *Slide* --
### Part 2: An Oveview of R
* The help function is `help()`. To quit R use `q()`. R is case sensitive. Comments are prefixed with `#`. Multiple commands can be separated with `;`.
* The normal assignment directive is `<-`; combine with the `$Object <- function c($val1,$val2,$val3)` to create a vector. Examine contents of workspace with `ls()`. Functions often include the object (e.g., `mean(Votes)`). 

-- *Slide* --
### Part 2: Datatypes and Objects
* Main datatypes are logical, numeric, integers, complex, character, and raw. 
* Unlike most programming languages variables are not declared as some data type. The variables	are assigned to Objects.
* Major Objects are vectors, lists, matrices, arrays, factors, and data frames. The latter is the most common Object. 
-- *Slide End* --

-- *Slide* --
### Part 2: Operators, Conditionals, Loops
* R has a rich variety of arithmetic, relational, logical, assignment operators and more, with precedence rules.
* R offers branching through conditional `if-else` statements with nesting (`if-else if-else if-else if` etc). There is also the `ifelse()` function, especially useful on vectors and the `switch()` function.
* R has looping mechanism through `for`, `while`, `repeat` loops with `break` and `next`, and `repeat` options.
-- *Slide End* --

-- *Slide* --
### Part 2: Functions
* Functions are used to break up code into modular components. They are declared by reserved word `function` and can have formal, actual, and named arguments.
* Functions often carry out some processing and return the result, using the return() function.
* Be attentive of environment and scope!
-- *Slide End* --

-- *Slide* --
### Part 2: Probability
* R has functions for frequency, relative frequency, mean, range, median, quartile, variance, standard deviation, covariance, correlation coefficient etc
* R has functions for binomial distribution, Poisson distribution, continuous uniform distribution, exponential distribution, normal distribution, chi-squared distribution, student t distribution, and f distribution.
* Also functions for goodness of fit, non-parametic methods, simple and multiple linear regression
-- *Slide End* --

-- *Slide* --
### Part 3: Basics of Octave
* GNU Octave is a high-level language primarily useful for numerical computations.
* It is largely compatible with MATLAB(R), but is FOSS. Has been in development since 1988.
* Various extensions via Octave Forge. Well suited for batch and interactive processing. Multiple versions on Spartan.
-- *Slide End* --

-- *Slide* --
### Part 3: Data and Argumentation Types
* Octave does not require declaration of data-types or dimension statement. Memory is managed by the language. Variables are case-sensitive and must begin with a letter.
* Octave operates primarily operates on scalars, vectors, and matrices. All are treated as matricies!
* A string in Octave is an array of characters and converts to the ASCII values. Escape values are the same as C.
* Numberical expressions and operations are similar to other programming environments
-- *Slide End* --

-- *Slide* --
### Part 3: Matrix Mathematics
* Matrices are either entered as an explicit list, generated by functions, created in .m files, or loaded from external files.
* Core matrix operations include sum, transpose, diag, fliplr.
* Uses either structures with named fields or cell arrays for mixed data types in the same variable.
-- *Slide End* --

-- *Slide* --
### Part 3: Matrix Manipulation
* There are numerous functions for manipulating matricies; e.g., upper and lower triangles, various filled matricies
* Index expressions in Octave permit the referencing or extracting selected elements of a matrix or vector.
-- *Slide End* --

-- *Slide* --
### Part 3: Polynominals
* A polynomial expressions in Octave is represented by its coefficients in descending order. The polynominal itself can be displayed by using the function output polyout.
*  Polynominal multiplication is carried out by vector convolutions and division by deconvolving. Addition of vectors of different lengths will fail. 
-- *Slide End* --

-- *Slide* --
### Part 3: Functions, Conditionals, and Loops
* A function in Octave is simply a function declation, name, body, and end of function declaration. Can be saved (.m file) for future use.
* Programming structures such as conditional branching and loops are available. These include the if statement, the switch statement, the while statement, the do-until statement, the for statement, the break and continue statements.
-- *Slide End* --

-- *Slide* --
### Part 4: But Wait? There's More?
* Maxima; for symbolic operations.
* Gretl; Gnu Regression, Econometrics and Time-series Library.
* Julia; Performance with Ease?
* UNUMs; computation without error.
-- *Slide End* --

-- *Slide* --
### Part 4: Maxima
* Basics of Maxima
* Operators, Expressions and Datatypes
* Plots and Files
-- *Slide End* --

-- *Slide* --
### Part 4: Maxima
* Polynominals
* Programming Maxima
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
### Part 4: Julia
* Data, Variables, Arithmetic and Boolean Functions
* Control Flow
* Ranges and Lists
-- *Slide End* --

-- *Slide* --
### Part 4: Julia
* Functions
* Custom Structures
* Input and Output
* Julia in Parallel
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












