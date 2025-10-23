penguins <- read.csv("/Volumes/courses/QAC/qac380/TEAMS/Team 3/penguins.csv")

library(descr)
library(ggplot2)
freq(penguins$species)

ggplot(data=penguins)+
  geom_line(aes(x=bill_length_mm, y=bill_depth_mm))+
  geom_smooth(aes(x=bill_length_mm, y=bill_depth_mm))

ggplot(data=penguins)+
  geom_boxplot(aes(x=species, y=bill_depth_mm))

model<- aov(bill_depth_mm~species, data=penguins)
summary(model)
 
model2<- aov(bill_length_mm~species, data=penguins)
summary(model2)
