data("HairEyeColor")
HairEyeColor
prop.table(HairEyeColor[,,'Male'], 2)['Red', 'Blue']
sum(HairEyeColor[,'Green','Female'])

library("ggplot2")
mydata <- as.data.frame(HairEyeColor)

obj <- ggplot(data = subset(mydata, Sex == 'Female'), aes(x = Hair, y = Freq)) + 
  geom_bar(stat="identity", aes(fill = Eye), position = position_dodge()) + 
  scale_fill_manual(values=c("Brown", "Blue", "Darkgrey", "Darkgreen"))
obj

binom.test(x = 5, n = 20, 0.5)
binom.test(t1)
chisq.test(t1)

t1 <- HairEyeColor["Brown", , "Female"]

data("diamonds")
main_stat <- chisq.test(diamonds)

