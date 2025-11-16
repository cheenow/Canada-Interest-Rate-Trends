library(tidyverse)

#Load and clean data
data <- read.csv("1010014501_databaseLoadingData.csv") %>%
filter(!is.na(VALUE))

#Select relevant columns and create half year period
data <- data %>%
select(REF_DATE, Rates, VALUE) %>%
mutate(date = as.Date(REF_DATE)) %>%
filter(Rates %in% c("Bank rate", "Chartered bank administered interest rates - Prime rate")) %>%
arrange(Rates, date) %>%
mutate(
period = ifelse(
as.numeric(format(date, "%m")) <= 6,
paste(format(date, "%Y"), "H1", sep = "-"),
paste(format(date, "%Y"), "H2", sep = "-"))) %>%
arrange(Rates, date)

#Average rate per 6-month period
avg_rates <- data %>%
group_by(period, Rates) %>%
summarise(avg_rate = mean(VALUE), .groups = "drop") %>%
pivot_wider(names_from = Rates, values_from = avg_rate) %>%
arrange(period)

View(avg_rates)

#Average days between rate changes
avg_days_between_changes <- data %>%
group_by(Rates) %>%
arrange(date, .by_group = TRUE) %>%
filter(VALUE != lag(VALUE) | is.na(lag(VALUE))) %>%
mutate(days_between_changes = as.numeric(date - lag(date))) %>%
summarise(avg_days_between_changes = round(mean(days_between_changes, na.rm = TRUE)),.groups = "drop")

View(avg_days_between_changes)

#Frequency of Bank Rate values
bank_freq <- data %>%
  filter(Rates == "Bank rate") %>%
  count(VALUE, name = "Weeks") %>%
  arrange(desc(Weeks)) %>%
  rename(Bank_rate = VALUE)

View(bank_freq)
