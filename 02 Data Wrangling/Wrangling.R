library("bitops")
library("gdata")
library("ggplot2")
library("gplots")
library("grid")
library("jsonlite")
library("knitr")
library("plyr")
library("RCurl")
library("reshape2")
library("rmarkdown")
library("tidyr")
library("dplyr")

births %>% group_by(zip_code) %>% summarise(avg_birth = mean(total_births)) %>% ggplot(aes(x = zip_code, y = avg_birth)) + geom_boxplot(color = "firebrick") + ggtitle('Summary: Birth')

deaths %>% group_by(zip_code) %>% summarise(ave_death = mean(total_deaths)) %>% ggplot(aes(x=zip_code, y=ave_death)) + geom_boxplot(color = "green") + ggtitle('Summary: Death')

m_birth %>% group_by(zip_code) %>% ggplot(aes(x=zip_code, y=value)) + geom_density2d(color = "red") + ggtitle('All Births by Area') + labs(y="Total_Birth")

m_death %>% group_by(zip_code) %>% ggplot(aes(x=zip_code, y=value)) + geom_density2d(color = "purple") + ggtitle('All Deaths by Area') + labs(y="Total_Death")
