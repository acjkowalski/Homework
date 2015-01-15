<<<<<<< HEAD
library(dplr) #put library statements at the top

#shortcuts
#ctrl + 1 in script, ctrl + 2 in console 
#ctrl + enter runs the command line that you're on
#scripts are .R (notebooks are different)

# calculator
2 + 2
3 * 5
3^6
36/12

# assignment
x <- 769 * 6438
x
#ls() or objects() tells you what objects you are working with
=======
library(dplyr) # put library statements at top

# calculator
2 + 2 
2 * 43
23/5
2^3

# assignment
x <- 9534 * 7389
x
>>>>>>> 89b2b8b1bbfb843e8d294a4e6bdc6dfe1124ba8f

# functions
# functionname(arg1, arg2, ...)
# NEED PARENS!
objects() # display objects in workspace
ls()      # same as objects()

# workspace
<<<<<<< HEAD
#the set of objects that you can get to
rm("x") #to remove. can also do rm(x)
rm(list = ls()) # deletes everything

# functions
# functionname(arg1, arg2, ...)
# NEED PARENS!
=======
# rm("x")
# rm(list = ls())
>>>>>>> 89b2b8b1bbfb843e8d294a4e6bdc6dfe1124ba8f

# help
# ?
# ??
# help()
# help.search()
<<<<<<< HEAD
?rm
help(rm)

# packages
install.packages("dplyr")
library("dplyr") #will stop the function if that package is not installed on the computer
require("dplyr") #same but will just give a warning but let you continue with the function

#saving workspaces
=======

# packages
?install.packages
#install.packages("dplyr") # install dplyr
library(dplyr) # loads package
require(dplyr) # doesn't throw error inside a function

# saving workspaces
>>>>>>> 89b2b8b1bbfb843e8d294a4e6bdc6dfe1124ba8f
# save()
save(x, file = "x.RData")
rm(x)
ls()
load("x.RData")
<<<<<<< HEAD
x

=======
ls()
x
>>>>>>> 89b2b8b1bbfb843e8d294a4e6bdc6dfe1124ba8f
# save.image()
save.image()
save.image("myworkspace.RData")

<<<<<<< HEAD
#quitting
# q()
q("yes") #quit and save workspace as .RData
q("no") #quit and not save. what scott always does

#working directories
getwd()
#setwd()

# sleep data
?sleep #help for datasets as well as functions

#some convenient ways to look at data
head(sleep) #looks at top six rows
head(sleep, 10) #looks at top 10 rows
tail(sleep)

sleep

summary(sleep)

#function excusion #1: specifying arguments
?head
head(x = sleep, n = 10) 
head(sleep, 10) #in order, dont need the specifiers/variables
head(n= 10, x=sleep) #not in order, need specifiers

# function excursion #2: generics
summary <- 10
summary
summary(sleep)
#enter the name of an object before assigning a value so that you avoid making things confusing for a reader

# package excursion: package conflicts
# name conflicts, when two packages have functions that share the same name
# defaults to MOST RECENT PACKAGE LOADED
# if "dothis" is a function,
# dothis() will DEFAULT to the dothis() from package2
# specify with package1::dothis() or packages2::dothis()  name of package:: name of function()
=======
# quitting
# q()
q("yes") # quit and save workspace as .RData
q("no")  # what I always do

# working directories
getwd()
# setwd()

# sleep data
?sleep

# some convenient ways to look at data
head(sleep, 10)
tail(sleep)
sleep
summary(sleep)

# function excursion #1: specifying arguments
?head
head(x = sleep, n = 10)
head(sleep, 10)
head(n = 10, x = sleep)
head(10, sleep)
length(sleep)

# function excursion #2: generics
?summary
?summary.data.frame

summary <- 10
summary        # can assign object names that already exist!
summary(sleep) 

# package excursion #2: package conflicts
# name conflicts can happen
# defaults to MOST RECENT PACKAGE LOADED
# if "dothis" is a function, 
# dothis() will DEFAULT to the dothis() from package2
# specify with package1::dothis() or package2::dothis()
>>>>>>> 89b2b8b1bbfb843e8d294a4e6bdc6dfe1124ba8f

# data structures
# vectors
# one-dimensional
# SINGLE TYPE

<<<<<<< HEAD
y <- c(2, 5, 29)
z <- c(3, 6, 23)

c(y,z)
=======
# making vectors
# c
c(1, 2, 3, 4)
c(1, 3, 4, 2)  # ORDER MATTERS

c(1, "pie") # coersion happens
c(1, pi)    # both numbers!

y <- c(1, 2, 3, pi)
length(y)

z <- c(3, 6, 23)

c(y, z)
>>>>>>> 89b2b8b1bbfb843e8d294a4e6bdc6dfe1124ba8f

yz <- c(y, z)

mean(yz)

min(yz)
max(yz)

<<<<<<< HEAD
x <- 1:100 # : is shortcut for sequence

#matrix: 2-dimensional vector
matrix(1:25, ncol = 5)
matrix(1:25, ncol = 5, byrow = TRUE) # byrow = FALSE is the default
#still all has to be the same type

# arrays: more dimensions!!!
array(1:27, dim = c(3, 3, 3))
# "slice number one looks like this... slice number 2 looks like this...
# good for matrix algebra

# don't store data as arrays and matrices
# use dataframes

#lists: can be heterogeneous
list(1, "pie", pi, x)

#data.frame : special kind of list
# two dimensional
# ADVANCED: datatable
=======
x <- 1:100  # : is shortcut for sequence

# matrix: two-dimensional vector
?matrix
matrix(1:25, ncol = 5)
matrix(1:25, ncol = 5, byrow = FALSE)
matrix(1:25, ncol = 5, byrow = TRUE)  # still needs to be same type

# arrays: more dimensions!!!
?array
array(1:27, dim = c(3, 3, 3))

# lists: can be heterogeous
list(1, "pie", pi, x)

# data.frame : special kind of list
# two dimensional
# ADVANCED: data.table
>>>>>>> 89b2b8b1bbfb843e8d294a4e6bdc6dfe1124ba8f
sleep
# columns = vectors
# have names
# columns all have to have the same length!

# subsetting
# use [ ] or [[ ]]
yz
<<<<<<< HEAD
yz[1] 
=======
yz[1]
>>>>>>> 89b2b8b1bbfb843e8d294a4e6bdc6dfe1124ba8f
yz[4]
yz[c(4, 3)]

sleep[ , ] # sleep[ROWS, COLUMNS]
<<<<<<< HEAD
# sleep[ , ] == sleep (all rows, all columns)
sleep[1:5, ] # gives rows 1-5 and all columns
sleep[ , c(3,1)]

colnames(sleep)
sleep[1:5, "group", "ID"]

colnames(sleep)[3]

mylist <- list(1, "pie", pi, x)
mylist[1]
=======

# sleep[ , ] == sleep  (all rows, all columns)
sleep[1:5, ]
sleep[ , c(3, 1)]

colnames(sleep)
sleep[1:5, "extra"]
sleep[1:5, c("extra", "ID")]

colnames(sleep)[3]

mynames <- colnames(sleep)
mynames[3]

x <- matrix(1:25, ncol = 5)
class(x)

mylist <- list(1, "pie", pi, x)
mylist[1]

>>>>>>> 89b2b8b1bbfb843e8d294a4e6bdc6dfe1124ba8f
class(mylist[4])
mylist[4]
class(mylist[[4]])
mylist[[4]]

<<<<<<< HEAD
sleep[[1]] # first column without the name, just a vector
sleep[1] # gives name and the things in the column// "includes the container"

sleep$extra #gives column as a vector, same as sleep[[1]] and sleep[["extra"]]

mydf <- data.frame(col1 = 1:10, col2 = 3, col3 = c("hello","goodbye")) # has different lengths, will be coersed 
mydf

# how to read in your data
mydata <- read.csv("data.csv")
mydata <- read.delim("filename.txt")

#all wrappers for read.table
?read.table
# sep = "," == CSV
# sep = "\t" == tab delim
#read.table also thinks there is not header, say header = TRUE
=======
sleep[[1]]  # first column
sleep[1]    # includes the container

sleep$extra  # same as sleep[[1]] and sleep[["extra"]]
sleep[[1]]
sleep[["extra"]]

# creating data frames
mydf <- data.frame(col1 = 1:10, col2 = 3, col3 = c("hello", "goodbye"))
mydf


>>>>>>> 89b2b8b1bbfb843e8d294a4e6bdc6dfe1124ba8f
