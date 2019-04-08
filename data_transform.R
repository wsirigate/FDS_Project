setwd("D:/FDS_Project")
df = read.csv("GDP_per_capita.csv")

dim(df)

us_value <- df[5:62]
currency <- 31.90 #08/04/62

thb_value <- us_value * currency

df[5:62] = thb_value

df

write.csv(df, "GDP_per_capita_thb.xlsx")
