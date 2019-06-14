# Stock-Price-Predictor
Building an LSTM Recurrent Neural Network for predicting stock market prices. Applied on each of the following time series data:
* Daily prices of **Natural gas**, starting from January 1997 to 2018. [link](https://datahub.io/core/natural-gas)
* Daily prices of **AMD** stock market, starting from 2009 to 2018. [link](https://www.kaggle.com/gunhee/amdgoogle)
* Daily prices of **Google** stock market, starting from 2009 to 2018. [link](https://www.kaggle.com/gunhee/amdgoogle)

**Important Note:** If Github viewer can't load the Jupyter Noteooks, then you can use [nbviewer](https://nbviewer.jupyter.org/) to view the notebooks without having to download them. Just copy the link to the notebook that you want to view, go to nbviewer, paste the link there, and click Go! 

# Getting Started
Here are the steps of training and testing the Stock Price Predictor:
## Data Preprocessing
* Extracting samples (sequences of days that we want to predict their prices) from the last part of the data to use it later for testing the reuslted model. Then, the rest of the data will be used for training and testing the model.
* Scaling the data in the range (0,1).
<br>**Note:** we need to scale because if we fit the model on unscaled data that has a wide range of values, then it is possible for large inputs to slow down the learning and convergence of our network and in some cases prevent the network from effectively learning your problem.
* Generating input and output sequences that will be used as the input for the Keras LSTM model. A randomly generated list of lengths (between a range whose bounds are in the range [5,100]) that represent window (or list of consecutive days) that the model is going to use in order to the preidct the target (next) day.
## Training and Testing the Predictor
**6 models** are going to be trained and tested in order to experiment the different resutls and pick out what is best. Moreover, two methods of splitting the data will be used, as follows:
1. Data sequences will be split into training and testing sets (no validation set)
2.  Data sequences will be split into training, testing and validation sets.




**Note:** This will results in 12 models, the first 6 models will use the first method of splitting and the second 6 models will use the second method of splitting.

<br>Concretely, these are the characteristics that we are going to build the models on:

<br> **Models trained on data that is split into training and testing sets (no validation)**

* __Model 1:__ Save **100** input samples from the last part of the data. **(70% training data, 30% testing data)**
* __Model 2:__ Save **100** input samples. **(50% training, 50% testing)**
* __Model 3:__ Save **1000** input samples **(70% training, 30% testing)**
* __Model 4:__ Save **1000** input samples **(50% training, 50% testing)**
* __Model 5:__ Save **2000** input samples **(70% training, 30% testing)**
* __Model 6:__ Save **2000** input samples **(50% training, 50% testing)**


<br> **Models trained on data that is split into training and testing sets (no validation)**

* __Model 1:__ Save **100** input samples from the last part of the data. **(70% training data, 15% validation data,15% testing data)**
* __Model 2:__ Save **100** input samples. **(50% training, 25% validation, 25% testing)**
* __Model 3:__ Save **1000** input samples **(70% training, 15% validation, 15% testing)**
* __Model 4:__ Save **1000** input samples **(50% training, 25% validation, 25% testing)**
* __Model 5:__ Save **2000** input samples **(70% training, 15% validation, 15% testing)**
* __Model 6:__ Save **2000** input samples **(50% training, 25% validation, 25% testing)**


### Training and testing steps (will be applied on each model):
1. Fit the model on the training data.
2. Evaluate the model on the testing data and plot predictions 
with the real prices.
3. Evaluate the model the last 100, 1000 and 2000 days, respectively. And plot the prediction of the model for these sequence of days with the real prices.

## Compare Models

1. Visually: Compare the performance of each model (measured using MSE) and identify the model with the best value using barplots.

2. Tabularly: Evalute the performance of the models, save the results using Pandas dataframes, and store them as CSV files.

**Note:** the evaluation will be on testing data and the samples that were extracted from the last part of the data (last 100, 1000 and 2000 days).


# Results
## Natural Gas Prices Dataset

Data Plot:

![Data Plot](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/Natural%20Gas%20Prices/natural_gas_prices_data.jpg)

### Performance of models that have been trained on data that is split into training and testing sets (no validation) 

**On Testing Data:**

![Performance on Testing Data](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/Natural%20Gas%20Prices/Predicting%20Natural%20Gas%20Prices%20-%20(Training%20and%20Testing%20Sets%2C%20With%20No%20Validation)/comparing_performance_of_models_on_testing_data.png)

**On Last 100 Days:**

![Performance on Last 100 Days](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/Natural%20Gas%20Prices/Predicting%20Natural%20Gas%20Prices%20-%20(Training%20and%20Testing%20Sets%2C%20With%20No%20Validation)/comparing_performance_of_models_on_last_100_days.png)

**On Last 1000 Days:**

![Performance on Last 1000 Days](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/Natural%20Gas%20Prices/Predicting%20Natural%20Gas%20Prices%20-%20(Training%20and%20Testing%20Sets%2C%20With%20No%20Validation)/comparing_performance_of_models_on_last_1000_days.png)

**On Last 2000 Days:**

![Performance on Last 2000 Days](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/Natural%20Gas%20Prices/Predicting%20Natural%20Gas%20Prices%20-%20(Training%20and%20Testing%20Sets%2C%20With%20No%20Validation)/comparing_performance_of_models_on_last_2000_days.png)

### Performance of models that have been trained on data that is split into training, testing and validation sets.

**On Testing Data:**

![Performance on Testing Data](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/Natural%20Gas%20Prices/Predicting%20Natural%20Gas%20Prices%20-%20(Training%2C%20Testing%20and%20Validation%20Sets)/comparing_performance_of_models_on_testing_data.png)

**On Last 100 Days:**

![Performance on Last 100 Days](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/Natural%20Gas%20Prices/Predicting%20Natural%20Gas%20Prices%20-%20(Training%2C%20Testing%20and%20Validation%20Sets)/comparing_performance_of_models_on_last_100_days.png)

**On Last 1000 Days:**

![Performance on Last 1000 Days](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/Natural%20Gas%20Prices/Predicting%20Natural%20Gas%20Prices%20-%20(Training%2C%20Testing%20and%20Validation%20Sets)/comparing_performance_of_models_on_last_1000_days.png)

**On Last 2000 Days:**

![Performance on Last 2000 Days](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/Natural%20Gas%20Prices/Predicting%20Natural%20Gas%20Prices%20-%20(Training%2C%20Testing%20and%20Validation%20Sets)/comparing_performance_of_models_on_last_2000_days.png)


### Effect of Using a Validation Set on Performance
**Using Natural Gas Prices Dataset**
<br>![Effect of Using a Validation Set](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/Natural%20Gas%20Prices/comparing_effect_of_adding_a_validation_set_on_performance.jpg)


## AMD Stock Market Prices Dataset

Data Plot:

![Data Plot](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/AMD%20Stock%20Prices/amd_stock_prices_data.jpg)

### Performance of models that have been trained on data that is split into training and testing sets (no validation) 

**On Testing Data:**

![Performance on Testing Data](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/AMD%20Stock%20Prices/Predicting%20AMD%20Stock%20Prices%20-%20(Training%20and%20Testing%20Sets%2C%20With%20No%20Validation)/comparing_performance_of_models_on_testing_data.png)

**On Last 100 Days:**

![Performance on Last 100 Days](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/AMD%20Stock%20Prices/Predicting%20AMD%20Stock%20Prices%20-%20(Training%20and%20Testing%20Sets%2C%20With%20No%20Validation)/comparing_performance_of_models_on_last_100_days.png)

**On Last 1000 Days:**

![Performance on Last 1000 Days](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/AMD%20Stock%20Prices/Predicting%20AMD%20Stock%20Prices%20-%20(Training%20and%20Testing%20Sets%2C%20With%20No%20Validation)/comparing_performance_of_models_on_last_1000_days.png)

**On Last 2000 Days:**

![Performance on Last 2000 Days](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/AMD%20Stock%20Prices/Predicting%20AMD%20Stock%20Prices%20-%20(Training%20and%20Testing%20Sets%2C%20With%20No%20Validation)/comparing_performance_of_models_on_last_2000_days.png)

### Performance of models that have been trained on data that is split into training, testing and validation sets.

**On Testing Data:**

![Performance on Testing Data](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/AMD%20Stock%20Prices/Predicting%20AMD%20Stock%20Prices%20-%20(Training%2C%20Testing%20and%20Validation%20Sets)/comparing_performance_of_models_on_testing_data.png)

**On Last 100 Days:**

![Performance on Last 100 Days](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/AMD%20Stock%20Prices/Predicting%20AMD%20Stock%20Prices%20-%20(Training%2C%20Testing%20and%20Validation%20Sets)/comparing_performance_of_models_on_last_100_days.png)

**On Last 1000 Days:**

![Performance on Last 1000 Days](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/AMD%20Stock%20Prices/Predicting%20AMD%20Stock%20Prices%20-%20(Training%2C%20Testing%20and%20Validation%20Sets)/comparing_performance_of_models_on_last_1000_days.png)

**On Last 2000 Days:**

![Performance on Last 2000 Days](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/AMD%20Stock%20Prices/Predicting%20AMD%20Stock%20Prices%20-%20(Training%2C%20Testing%20and%20Validation%20Sets)/comparing_performance_of_models_on_last_2000_days.png)


### Effect of Using a Validation Set on Performance
**Using AMD Stock Market Prices Dataset**
<br>![Effect of Using a Validation Set](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/AMD%20Stock%20Prices/comparing_effect_of_adding_a_validation_set_on_performance.jpg)

## Google Stock Market Prices Dataset

Data Plot:

![Data Plot](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/Google%20Stock%20Prices/google_stock_prices_data.jpg)

### Performance of models that have been trained on data that is split into training and testing sets (no validation) 

**On Testing Data:**

![Performance on Testing Data](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/Google%20Stock%20Prices/Predicting%20Google%20Stock%20Prices%20-%20(Training%20and%20Testing%20Sets%2C%20With%20No%20Validation)/comparing_performance_of_models_on_testing_data.png)

**On Last 100 Days:**

![Performance on Last 100 Days](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/Google%20Stock%20Prices/Predicting%20Google%20Stock%20Prices%20-%20(Training%20and%20Testing%20Sets%2C%20With%20No%20Validation)/comparing_performance_of_models_on_last_100_days.png)

**On Last 1000 Days:**

![Performance on Last 1000 Days](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/Google%20Stock%20Prices/Predicting%20Google%20Stock%20Prices%20-%20(Training%20and%20Testing%20Sets%2C%20With%20No%20Validation)/comparing_performance_of_models_on_last_1000_days.png)

**On Last 2000 Days:**

![Performance on Last 2000 Days](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/Google%20Stock%20Prices/Predicting%20Google%20Stock%20Prices%20-%20(Training%20and%20Testing%20Sets%2C%20With%20No%20Validation)/comparing_performance_of_models_on_last_2000_days.png)

### Performance of models that have been trained on data that is split into training, testing and validation sets.

**On Testing Data:**

![Performance on Testing Data](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/Google%20Stock%20Prices/Predicting%20Google%20Stock%20Prices%20-%20(Training%2C%20Testing%20and%20Validation%20Sets)/comparing_performance_of_models_on_testing_data.png)

**On Last 100 Days:**

![Performance on Last 100 Days](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/Google%20Stock%20Prices/Predicting%20Google%20Stock%20Prices%20-%20(Training%2C%20Testing%20and%20Validation%20Sets)/comparing_performance_of_models_on_last_100_days.png)

**On Last 1000 Days:**

![Performance on Last 1000 Days](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/Google%20Stock%20Prices/Predicting%20Google%20Stock%20Prices%20-%20(Training%2C%20Testing%20and%20Validation%20Sets)/comparing_performance_of_models_on_last_1000_days.png)

**On Last 2000 Days:**

![Performance on Last 2000 Days](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/Google%20Stock%20Prices/Predicting%20Google%20Stock%20Prices%20-%20(Training%2C%20Testing%20and%20Validation%20Sets)/comparing_performance_of_models_on_last_2000_days.png)


### Effect of Using a Validation Set on Performance
**Using Google Stock Market Prices Dataset**
<br>![Effect of Using a Validation Set](https://github.com/MohamedAliHabib/Stock-Price-Predictor/blob/master/Google%20Stock%20Prices/comparing_effect_of_adding_a_validation_set_on_performance.jpg)

# Notes
What's in the files?
1. The code for the all the models, of course.
2. The models as *.h5* files. They can be restored as follows:
'model = load_model('my_model.h5')'
3. The resulted tables in CSV files.

Contributes are welcome!
<br>Thank you!