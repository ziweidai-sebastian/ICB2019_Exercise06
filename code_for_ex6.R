#Part 1
file <- as.data.frame(read.csv("wages.csv")) #file chosen by user
numberofline <- 5 #number of lines wanted by user
head(file,numberofline)

#Part 2
read.csv("iris.csv")
#print last 2 rows and last two colums
iris <- as.data.frame(read.csv("iris.csv"))
head(iris,2)
tail(iris,2)
#number of setosa
nrow(iris[iris$Species=="setosa",])
#number of versicolor
nrow(iris[iris$Species=="versicolor",])
#number of virginica
nrow(iris[iris$Species=="virginica",])
#rows with Sepal.Width > 3.5
SepalWidthResults <- iris$Sepal.Width > 3.5
which(SepalWidthResults==TRUE)
#writing "setosa.csv"
write.csv(head(iris,50),file = "setosa.csv")
#mean, min,and max of Pedal.Length for virginica
virginica <- as.data.frame(tail(iris,5))
virginicaPedalLength <- virginica$Petal.Length
mean(virginicaPedalLength)
min(virginicaPedalLength)
max(virginicaPedalLength)