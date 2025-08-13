# Loading the data from the R library
data("airquality")
# Taking a look into the data
View(airquality)

# Filtering Data with Multiple Conditions
# We are focusing un high solar and high wind

# Using Statement with AND
# GDC -  Version - TRUE/FALSE VERSION
airquality[, "Solar.R"] > 150 & airquality[, "Wind"] > 10
# ChatGPT - Version - VIEW VERSION
View(airquality[airquality[, "Solar.R"] > 150 & airquality[, "Wind"] > 10, ])

# Using Statement with AND
# GDC - Version - TRUE/FALSE VERSION
airquality[, "Solar.R"] > 150 | airquality[, "Wind"] > 10
# ChatGPT - Version - VIEW VERSION
View(airquality[airquality[, "Solar.R"] > 150 & airquality[, "Wind"] > 10, ])
# The Comma at the very end is important! 
# He might think, we selected undefined columns

# Using Statement with NOT
# We are focusing on filtering every 1st day of the month
# GDC - Version - TRUE/FALSE VERSION
airquality[, "Day"] != 1
# ChatGPT - Version - VIEW VERSION
View(airquality[airquality[, "Day"] != 1,])

# Using The "Opposite Filter" Statement
# Insead of kicking out things not meeting filter
# Now we kick out everything having this filter
# GDC - Version - TRUE/FALSE VERSION
!(airquality[, "Solar.R"] > 150 | airquality[, "Wind"] > 10)
# ChatGPT - Version - VIEW VERSION
View(airquality[!(airquality[, "Solar.R"] > 150 | airquality[, "Wind"] > 10), ])
# Pay close attention to the comma at the end - it's outside of " !() " !!!


# Conditonal Statements - Example
ozone_level <- airquality[1,"Ozone"]
if(is.na(ozone_level)){
  print("Ozone reading is missing for the first day.")
} else if(ozone_level < 30){ 
  print("Low ozone level.")
} else if(ozone_level < 100){ 
  print("Moderate ozone level.")
} else{
  print("High ozone level.")
}