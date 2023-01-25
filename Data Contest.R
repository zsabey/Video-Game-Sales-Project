
library(readxl)

file_path <- "/Users/andrew/Downloads/Unemployment Rates US.xlsx"

table_data <- read_excel(file_path)

print(table_data)


library(reshape2)
melt_data <- melt(table_data, id.vars = "Month", variable.name = "percentage", value.name = "value")

library(ggplot2)
ggplot(melt_data, aes(x = Month, y = value, color = percentage)) + geom_line()

ggplot(melt_data, aes(x = Month, y = value, color = percentage)) + 
  geom_line() + 
  labs(x = "Dates", y = "Percentage", title = "Graph of Table Data")