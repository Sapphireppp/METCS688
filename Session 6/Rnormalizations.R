
#---- Scaling in R (z-score)-----

# Load sample dataset
data(iris)
# View sample matrix
a = iris$Sepal.Width
# Before min-max normalization
a
#Normalize a with min-max function
scale(a, center = TRUE, scale = TRUE)

# normalizing the content of a matrix with R default scaling package.
# 
x <- matrix(1:10, ncol = 2)
x
scale(x)

#--------- z-score by hand 
z = (x - mean(x)/sd(x))
z

#------- min-max scaling
minmax <- function(x) {
  return((x- min(x)) /(max(x)-min(x)))
}

samplevec = c(-23,2,34,12,11,20,0)

minmax(samplevec)

#------norms
#Lp=1 norm
lpnorm = norm(x, type = c("O")) # one norm, (maximum absolute column sum)
lpnorm 

lpnorm = norm(x, type = c("2")) #  “spectral” or 2-norm, which is the largest singular value (svd) of x
lpnorm


#---------- Logarithm Transformation
a <- c(190,220,210,200,150,4,5,6,2,3,1,1)
plot(a)

a2 <- log10(a)
a2
plot(a2)

#---------- box-cox transformation
install.packages("car")
library("car")

bcPower(1:10, 2) # lambda = 0
b <- bcPower(a,3) # lambda = 3
plot(b)
