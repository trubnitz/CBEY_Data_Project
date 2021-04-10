library(readxl)
data <- read_xlsx('/Users/Aavni/Dropbox (Yale_FES)/Siya Test/Data Viz Github/CBEY_Data_Project/WSUMTRUE14_2.xlsx')
View(data)
plot(data)
library(ggplot2)
library(tidyverse)

p <- ggplot(data = data, aes(x=Rank,y =Students)) +
  geom_bar(stat="identity",fill = "slategray3") +
  theme_bw() +
  labs(title = "28% of MBA Students Think Environmental Sustainabilty is Extremely Important",
       subtitle = "How important is for business leaders to be knowledgeable about environmental sustainability?")
p


datal<- data

datal$Rank <- factor(datal$Rank, 
                    levels = c("Extremely", "Very", "Somewhat", "Slightly", "Not at all"))

q <- ggplot(data = datal, aes(x=Rank,y =Students)) +
  geom_bar(stat="identity",fill = "midnightblue") +
  theme_classic() +
  labs(title = "70% of MBA Students Think it is Extremely or Very Important for Business Leaders to be Knowledgeable about Environmental Sustainability",
       subtitle = "How important is for business leaders to be knowledgeable about environmental sustainability?",
       caption = "Source: CBEY GNAM Survey Results 2021",
       y = "Number of Students", x = "Response") 
  
q


ggsave("CBEY_14_2_plot(edit).png",
       plot = last_plot(),
       dpi = 300)
