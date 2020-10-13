# build the model

# load the dataset
dataset <- iris

# create the model
model <- lm(Petal.Length ~ Petal.Width, data = dataset)

# # example: run the model once
# prediction_data <- data.frame(Petal.Width=1)
# predict(model,prediction_data)

#* @get /predict_petal_length
get_predict_length <- function(petal_width){
  
  # convert the input to a number
  petal_width <- as.numeric(petal_width)
  
  #create the prediction data frame
  prediction_data <- data.frame(Petal.Width=petal_width)
  
  # create the prediction
  predict(model,prediction_data)
}