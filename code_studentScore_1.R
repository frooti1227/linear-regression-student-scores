install.packages("ggplot2")
library(ggplot2)
data<-student_Score_xls
str(data)
summary(data)

###
ggplot(data, aes(x = Hours, y = Scores))
geom_point()
labs(title="relationship between study hours and percentage",
     x= "study hours", y= "percentage score")
model<-lm(Scores ~ Hours,data=data)
summary(model)

###
new_data<-data.frame(Hours = 9.5)
Predicted_score<- predict(model,newdata = new_data)
print(Predicted_score)