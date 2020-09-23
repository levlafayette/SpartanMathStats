# Import the tree data CSV
tree <- read.csv(file="trees91.csv",sep=",",head=TRUE)
names(tree)

# Import the W1 data
w1 <- read.csv(file="w1.dat", sep=",",head=TRUE)
names(w1)


# Stripchart
# A stripchar is a the most simple charts. 
# It spreads the values on your x-axis by referencing a column. 
# One can also spread over the y-axis by using the option vertical=TRUE.
stripchart(w1$vals,method="stack",
             main='Stripchart Stack: Leaf BioMass in High CO2 Environment',
             xlab='BioMass of Leaves')

# Jitter
# When to many values are densed together, apply the method jitter to spread the values out, so it is more readable.
stripchart(w1$vals,method="jitter",
             main='Stripchart Jitter: Leaf BioMass in High CO2 Environment',
             xlab='BioMass of Leaves')

# Histograms
# Histograms plot the frequency that data is within a certain range. 
hist(w1$vals,main='Histogram: Leaf BioMass in High CO2 Environment',xlab='BioMass of Leaves')

# Range (breaks)
# Change the spread of the range over the frequency by using breaks = [Number].
hist(w1$vals,main="Histogram Break Ranges 2",xlab="Biomass of Leaves", breaks = 2)
hist(w1$vals,main="Histogram Break Ranges 4",xlab="Biomass of Leaves", breaks = 8)
hist(w1$vals,main="Histogram Break Ranges 16",xlab="Biomass of Leaves", breaks = 16)

# Domain (xlim)
# Vary the size of the domain with the xlim option; determine the min and max range of the largest values.
# Domain spread close to the max value.

hist(w1$vals,main="Xlim Break Ranges 2",xlab="Biomass of Leaves", breaks=12,xlim=c(0,2))

# Domain spread far out of the max value.

hist(w1$vals,main="Domain Spread Break Ranges 12",xlab="Biomass of Leaves", breaks=12,xlim=c(0,5))

# Boxplot
# Provides a graphical view of the median, quartiles, maximum, and minimum of a data set. 
# The y-axis is the default plot direction. One can change this to the x-axis with the following option horizontal=TRUE.

boxplot(w1$vals, 
          main='Leaf BioMass in High CO2 Environment',
          ylab='BioMass of Leaves', horizontal=TRUE)

# Combined plots

hist(w1$vals,main="Leaf BioMass in High CO2 Environment Combined",xlab="BioMass of Leaves",ylim=c(0,16))
boxplot(w1$vals,horizontal=TRUE,at=16,add=TRUE,axes=FALSE)
stripchart(w1$vals,add=TRUE,at=15)

# Factors
# The function factor encodes a vector as a factor. The factor levels are assumed to be ordered. 

#  Example of a factor for the column C and N.

tree$C <- factor(tree$C)
tree$N <- factor(tree$N)

# A boxplot on the tree TBM column

boxplot(tree$STBM,
          main='Stem BioMass in Different CO2 Environments',
          ylab='BioMass of Stems')

# A boxplot on the tree TBM with the factor C.

boxplot(tree$STBM~tree$C,
          main='Stem BioMass in Different CO2 Environments',
          ylab='BioMass of Stems')

# Scatter
# A graph in which the values of two variables are plotted along two axes, the pattern of the resulting points revealing any correlation present.

plot(tree$STBM,tree$LFBM,
       main="Relationship Between Stem and Leaf Biomass",
       xlab="Stem Biomass",
       ylab="Leaf Biomass")

# Correlation calculation of the TBM value.

cor(tree$STBM,tree$LFBM)

# Quantile plots
# The quantile-quantile (q-q) plot is a graphical technique for determining if two data sets come from populations with a common distribution. 
# A q-q plot is a plot of the quantiles of the first data set against the quantiles of the second data set.
# The qqline shows the normal distribution of the data.

qqnorm(w1$vals,
         main="Normal Q-Q Plot of the Leaf Biomass",
         xlab="Theoretical Quantiles of the Leaf Biomass",
         ylab="Sample Quantiles of the Leaf Biomass")
	qqline(w1$vals)

