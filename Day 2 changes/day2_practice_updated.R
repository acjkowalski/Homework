# 1. Run a t-test with the sleep data set
#   a. save the values as objects/variables first,
#      then supply as arguments to t.test()
<<<<<<< HEAD
group1 <- sleep$extra[sleep$group==1]
group2 <- sleep$extra[sleep$group==2]
t.test(group1, group2) # p = 0.079

#   b. try skipping that step and referring to the values directly
t.test(sleep$extra[sleep$group==1],sleep$extra[sleep$group==2])
=======
#   b. try skipping that step and referring to the values directly
group1 <- sleep$extra[1:10]
group2 <- sleep$extra[11:20]

group1 <- sleep$extra[sleep$group == 1]
group2 <- sleep$extra[sleep$group == 2]

t.test(group1, group2)
>>>>>>> 89b2b8b1bbfb843e8d294a4e6bdc6dfe1124ba8f

# 2. Do the same thing with the "iris" data set
#    - compare sepal width
#    - all three pairwise comparisons
summary(iris)
setosa <- iris$Sepal.Width[iris$Species=="setosa"]
versicolor <- iris$Sepal.Width[iris$Species=="versicolor"]
virginica <- iris$Sepal.Width[iris$Species=="virginica"]

t.test(setosa, versicolor) # p = 2.434 x 10^15
t.test(setosa, virginica) # p = 4.57 x10 ^ -09
t.test(versicolor, virginica) # p = 0.001819

# 3. Do the same (run a t-test) thing again on "women" data
#    - compare the two columns
#    - (yes, this doesn't make much sense as a comparison,
#      it's just a programming exercise)
<<<<<<< HEAD
summary(women)
t.test(women[[1]], women[[2]]) # p = 6.82 x10 ^ -12   ; can coerse [ ] but wants [[ ]] vectors
=======
t.test(women[1], women[2])
t.test(women[[1]], women[[2]])

t.test(women[["height"]], women[["weight"]])

t.test(women$height, women$weight)
>>>>>>> 89b2b8b1bbfb843e8d294a4e6bdc6dfe1124ba8f

# 4. Re-do "sleep" t-test (#1 above) as paired
t.test(group1, group2, paired=TRUE) # p = 0.0028

# 5. Run a true "Student's" t.test for #1
t.test(group1, group2, type = STUDENT)
?t.test

# 6. Try the "formula" method for t.test()
#    a. Read the help
#    b. Look at the "formula" argument
#    c. Try to use that to replicate the results from #1 above
<<<<<<< HEAD
?t.test
t.test(extra ~ group, data = sleep) # p = 0.079
=======
t.test(extra ~ group, data = sleep)
>>>>>>> 89b2b8b1bbfb843e8d294a4e6bdc6dfe1124ba8f

# 7. Run a Wilcoxon Signed Rank test for the comparisons
#    in #1 through #3
#    - use help.search to find a function to do this


# 8. Run a correlation test on the "women" data
#    a. Pearson
#    b. Spearman


# 9. save all results (and only those results!) in an
#    .RData object
#    - try to think of (at least) two ways to do this
sleep.test <- t.test(extra ~ group, data = sleep)
<<<<<<< HEAD
#saved as an object
save(sleep.test, file = "sleep_test.RData")
#now the results are saved as an object
save(sleep.test1, otherresult2, ...) # in order to put them all in the same file
=======
save(sleep.test, file = "results.RData")
# save(sleep.test, otherthing1, otherthing2, file = "bunchofresults.RData")
>>>>>>> 89b2b8b1bbfb843e8d294a4e6bdc6dfe1124ba8f

# 10. clean, comment, and save this script with your answers


# 11. Look at the format of your Homework data set
#     - find a function to read in your data
#     - needed for tonight's Homework
