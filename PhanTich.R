rm(list=ls())

#load data
data <-read.csv("C:/Users/Admin/Downloads/data.csv",stringsAsFactors =TRUE)


#ANOVA

tam = data

relation <- lm(formula = total_amount ~ trip_distance + fare_amount + tip_amount + tolls_amount + duration 
               ,data = tam)      
              
anova(relation)

#T-TEST

lm_poly1 <- lm( total_amount ~ trip_distance + fare_amount + tip_amount + tolls_amount  , data = tam)


summary(lm_poly1)

