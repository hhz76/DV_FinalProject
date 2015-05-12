library(reshape2)
library(tidyr)
library(gdata)

births <- read.csv("births_2012.csv")
deaths <- read.csv("deaths_2012.csv")

m_birth <- melt(births, id = "zip_code")
m_death <- melt(deaths, id = "zip_code")

write.csv(m_birth,"births.csv",row.names=FALSE,na = "")
write.csv(m_death,"deaths.csv",row.names=FALSE,na = "")