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




####JACK M CODE####

summary_species <- penguin %>%
  group_by(species) %>%
  summarise(
    mean_bill_length_mm = mean(bill_length_mm, na.rm = TRUE),
    mean_bill_depth_mm = mean(bill_depth_mm, na.rm = TRUE),
    mean_flipper_length_mm = mean(flipper_length_mm, na.rm = TRUE),
    mean_body_mass_g = mean(body_mass_g, na.rm = TRUE)
  )
