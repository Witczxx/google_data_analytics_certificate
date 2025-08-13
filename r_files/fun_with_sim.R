
### Installing The Needed Package
install.packages("SimDesign")
library(SimDesign)

### We compare the measured temperature with our prediction
### The bias calculation will tell us, if something is unbiased
actual_temp <- c(68.3, 70, 72.4, 71, 67, 70)
predicted_temp <- c(67.9, 69, 71.5, 70, 67, 69)
bias(actual_temp, predicted_temp)
# 0.7166667 - good score - close to 0

actual_sales <- c(150, 203, 137, 247, 116, 287)
predicted_sales <- c(200, 300, 150, 250, 150, 300)
bias(actual_sales, predicted_sales)
# -35 - prediction too high - far away from 0