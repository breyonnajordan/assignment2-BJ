penguins <- read.csv("/Volumes/courses/QAC/qac380/TEAMS/Team 3/penguins.csv")

library(descr)
library(ggplot2)
freq(penguins$species)

ggplot(data=penguins)+
  geom_line(aes(x=bill_length_mm, y=bill_depth_mm))+
  geom_smooth(aes(x=bill_length_mm, y=bill_depth_mm))