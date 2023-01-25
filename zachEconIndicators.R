library(tidyverse)
library(rvest)

incomeData <- ("https://apps.bea.gov/iTable/?reqid=19&step=3&isuri=1&1921=survey&1903=58")

disposable_income <- read_csv("Disposable_income.csv", skip = 3)
  