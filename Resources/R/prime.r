# Program to check if the input number is prime or not
# Take input from the user and works as a Rscript, Rstudio, interactive etc.
#
# Read in user input
#
# Lev Lafayette, 20200922
#
cat("Enter an integer please: ");
num <- as.integer(readLines("stdin",n=1));
print(num);
flag = 0
# Prime numbers are greater than 1
if(num > 1) 
{
# check for factors
flag = 1
for(i in 2:(num-1)) {
	if ((num %% i) == 0) {
	flag = 0
	break
		}
	}
}	 
if(num == 2)  flag = 1
if(flag == 1) {
print(paste(num,"is a prime number"))
} else {
print(paste(num,"is not a prime number"))
}
