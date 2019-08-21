setwd("/Users/rawassizadeh/EVERYTHING/Work/TEACHING/CS 688 - Web Analytics and Mining/Module 4 codes")
# create two files A and B with OS level command and add variable A and variable B to them.
cat("file A\n", file = "A")
cat("file B\n", file = "B")

file.append("A", "B")
file.create("B") # trashing previously created B file
file.append("A", rep("B", 10))

file.copy("A", "C")
dir.create("tmppp")
file.copy(c("A", "B"), "tmppp")
list.files("tmp")
