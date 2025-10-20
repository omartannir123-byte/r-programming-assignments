#1. Import Assignment 6 Data
student6 <- read.table(file.choose(), header = TRUE, stringsAsFactors = FALSE)
head(student6)
names(student6)

#Load plyr and compute the mean of Grade by Sex: 
library(plyr)
gender_mean <- ddply(
  student6,
  "Sex",
  summarise,
  GradeAverage = mean(Grade, na.rm = TRUE)
)
#Write the grouped means to a text file:
write.table(
  gender_mean,
  file = "gender_mean.txt",
  sep  = "\t",
  row.names = FALSE
)

#2. Filter Names Containing "i"
i_students <- subset(
  student6,
  grepl("i", Name, ignore.case = TRUE)
)
#Extract just the names and write them to a CSV:
write.csv(
  i_students$Name,
  file      = "i_students.csv",
  row.names = FALSE,
  quote     = FALSE
)

#3. Export Filtered Dataset
write.csv(
  i_students,
  file      = "i_students_full.csv",
  row.names = FALSE
)
#Confirm the files gender_mean.txt, i_students.csv, and i_students_full.csv exist in your working directory.
list.files(pattern = "gender_mean.txt", "i_students.csv", "i_students_full.csv")

Blog link: r-programming-omareltannir.blogspot.com
