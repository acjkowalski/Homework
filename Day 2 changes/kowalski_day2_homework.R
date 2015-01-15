# Complete all of the items below
# Use comments where you're having trouble or questions
getwd()
setwd(~/projects/r_programming_bsos)

# 1. Read your data set into R
mydata <- read.csv("Kowalski_rprogrammingdata.csv")

# 2. Peek at the top few rows
head(mydata)

# 3. Peek at the top few rows for only a few columns
head(mydata[ ,1:3])

# 4. How many rows does your data have?
nrow(mydata) #1048575 or
length(mydata$Subject)

# 5. Get a summary for every column
summary(mydata)

# 6. Get a summary for one column
summary(mydata$Accuracy)
summary(mydata[, 1])
summary(mydata[, "Accuracy"])
summary(mydata[1])
summary(mydata[[1]])

# 7. Are any of the columns giving you unexpected values?
#    - missing values? (NA)
sum(is.na(mydata)) # 0

# 8. Select a few key columns, make a vector of the column names
keycolumns <- c("Subject", "Condition", "Accuracy")
keycolumns

# 9. Create a new data.frame with just that subset of columns
#    from #7
#    - do this in at least TWO different ways
df <- data.frame(mydata$Subject, mydata$Condition, mydata$Accuracy)
df

df <- data.frame(mydata[ ,c(1,6,8)])
df

# 10. Create a new data.frame that is just the first 10 rows
#     and the last 10 rows of the data from #8
top <- head(mydata, 10)
top

bottom <- tail(mydata, 10)
bottom 

top.and.bottom <- rbind(top,bottom)

# 11. Create a new data.frame that is a random sample of half of the rows.
?sample
half <- mydata[len]
sample(mydata, nrow(mydata)/2)

half <- mydata[sample(nrow(mydata),nrow(mydata)/2), ]

#or assign nrows
nrows <- nrow(mydata)
half <- mydata[sample(nrows, nrows/2),]


# 12. Find a comparison in your data that is interesting to make
#     (comparing two sets of numbers)
#     - run a t.test for that comparison
#     - decide whether you need a non-default test
#       (e.g., Student's, paired)
#     - run the t.test with BOTH the formula and "vector"
#       formats, if possible
#     - if one is NOT possible, say why you can't do it

mydata1 <- aggregate(mydata$Accuracy, by=list(mydata$Subject, mydata$Condition), FUN = mean, na.rm=TRUE)
colnames(mydata1) <- c("Subject","Condition","Accuracy")

test1 <- t.test(mydata1$Accuracy[mydata1$Condition=="2"],mydata1$Accuracy[mydata1$Condition=="4"], paired=TRUE)
t.test(mydata1$Accuracy ~ mydata1$Condition, paired = TRUE) #I can't run this function because my grouping factor - condition - has more than 2 levels. I can work around this by taking a subset of the dataframe and then running the formula format, but that is way more complicated:
mydata.cond24 <- subset(mydata1, mydata1$Condition=="2" | mydata1$Condition=="4", select = Subject:Accuracy)
summary(mydata.cond24)
t.test(mydata.cond24$Accuracy ~ mydata.cond24$Condition)

# 13. Repeat #10 for TWO more comparisons
#     - ALTERNATIVELY, if correlations are more interesting,
#       do those instead of t-tests (and try both Spearman and
#       Pearson correlations)
test2 <- t.test(mydata1$Accuracy[mydata1$Condition=="1"], mydata1$Accuracy[mydata1$Condition=="2"], paired = TRUE) 
test3 <- t.test(mydata1$Accuracy[mydata1$Condition=="3"], mydata1$Accuracy[mydata1$Condition=="4"], paired = TRUE) 

# 14. Save all results from #12 and #13 in an .RData file
save(test1, test2, test3, file = "hw1results.RData")

# 15. Email me your version of this script, PLUS the .RData
#     file from #14
