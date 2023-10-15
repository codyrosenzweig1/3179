library('dplyr')
data1 <- read_csv('Global Electricity Statistics.csv')
data2 <- read_csv('world_country_and_usa_states_latitude_and_longitude_values.csv')


merged_data <- left_join(data1, data2, by = c("Country" = "country"))

view(merged_data)

write_csv(merged_data, file = "Global_Electricity_Statistics.csv")
