library(readxl)
data <- read_xlsx('/Users/taliarubnitz/Desktop/WSUMTRUE14_2.xlsx')
View(data)
plot(data)
library(ggplot2)
library(tidyverse)

p <- ggplot(data = data, aes(x=reorder(Rank),y =Students)) +
  geom_bar(stat="identity",fill = "slategray3") +
  theme_bw() +
  labs(title = "28% of MBA Students Think Environmental Sustainabilty is Extremely Important",
       subtitle = "How important is for business leaders to be knowledgeable about environmental sustainability?")
p

datal<- data

datal$Rank <- factor(datal$Rank, 
                    levels = c("Extremely", "Very", "Somewhat", "Slightly", "Not at all"))

q <- ggplot(data = datal, aes(x=Rank,y =Students)) +
  geom_bar(stat="identity",fill = "slategray3") +
  theme_bw() +
  labs(title = "28% of MBA Students Think Environmental Sustainabilty is Extremely Important",
       subtitle = "How important is for business leaders to be knowledgeable about environmental sustainability?",
       caption = "Souce: CBEY")
q
