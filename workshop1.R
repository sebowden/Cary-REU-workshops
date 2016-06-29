###This is a script for the first Cary REU workshop (2016)
#SE Bowden
#lasted edited: 15 June 2016

######################################################

#you can use comments for every line
#addition
1+2
#subtraction
2-1
#multiplication
2*4
#division
8/2

#or you can use comments for 'chunks' of code
#basic math functions
1+2
2-1
2*4
8/2

############################################

#we assign objects to names using <-
#arrow points from object -> to name
x<-4
y<-8
z<-x+y
a<- 2*y*x-(z/6)*(1-y)+5
thisisareallylongvariablename=1
ThisIsAReallyLongVariableName=10

#######################################

#exponents are denoted with ^
2^4
#or you can take the square root using
sqrt(16)

#you can take natural logs or logs in other bases
#this gives you the natural log
log(3.14159)
#this gives you the base-10 log
log10(3.14159)

###################################

#we can easily calculate summary statistics like:
sum(x,y,z)
mean(x,y,z)
min(x,y,z)
max(x,y,z)
sd(c(x,y,z)) #standard deviation

######################################

#vectors are created by stringing several numbers together using c()
myvector<-c(x,y,z)
#we can do math with each number in a vector
myvector-3
#or we can do math with two vectors of the same length
myothervector<-c(10,14,2)
myvector+myothervector
myvector*myothervector

#######################################

sequence<-c(1,2,3,4,5)
#making a sequence of numbers like this is OK, but what if you need 1000 numbers?
#first number = FROM, second number = TO
mysequence<-seq(1,1000)
#you can also make a sequence of non-integers by specifying specific intervals
othersequence<-seq(1,100,by=0.01)
#or a sequence of a specific length (assumes equal intervals)
anothersequence<-seq(1,4,length=1486)

######################################

#repeat a single number
#first number = what you want to repeat, second number = number of repetitions
repetition<-rep(6,10)
#or repeat a sequence by combining both functions
otherrepetition<-rep(seq(1,10),10)
#or a vector with multiple repetitions
anotherrepetition<-c(rep(1,10),rep(2,10),rep(3,10),rep(4,10),rep(5,10))

######################################

#set working directory (Session > Set wd > Choose directory)
my.data<-read.csv("workshop1_data.csv",header=TRUE)

#look at your whole data set
my.data
#look at the first 6 lines
head(my.data)
#look at the last 6 lines
tail(my.data)
#get a list of column names
names(my.data)
#get dimensions of your data set in [# rows, # columns]
dim(my.data)

########################################

#mean of a continuous variable
#using $ after assigned name selects a specific column
mean(my.data$Abd_length)
#standard deviation
sd(my.data$Abd_length)
#min/max or range of values
min(my.data$Abd_length)
max(my.data$Abd_length)
range(my.data$Abd_length)
#number of observations -- this only works for vectors
length(my.data$Abd_length)
#summary of each column/variable
summary(my.data)

#######################################

#data.name[row(s) that meet this criteria, columns that meet this criteria]
culex<-my.data[my.data$Species=="CQ",]
mean(culex$Abd_length)

aegypti<-my.data[my.data$Species=="AG",]
mean(aegypti$Abd_length)

albopictus<-my.data[my.data$Species=="AL",]
mean(albopictus$Abd_length)

#####################################

hist(culex$Abd_length)
hist(aegypti$Abd_length)
hist(albopictus$Abd_length)

boxplot(culex$Abd_length)
boxplot(aegypti$Abd_length)
boxplot(albopictus$Abd_length)

####################################

females=my.data[my.data$Sex=="F",]
males=my.data[my.data$Sex=="M",]

summary(females)
summary(males)

mean(females$Abd_length)
sd(females$Abd_length)
mean(males$Abd_length)
sd(males$Abd_length)

hist(females$Abd_length)
hist(males$Abd_length)
boxplot(females$Abd_length)
boxplot(males$Abd_length)
