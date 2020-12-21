# RobotArmGraspPrediction
 Code for Robot Arm Grasp Prediction using Machine Learning
 This repository is part of the code used for the project "Analysis of different Supervised Learning Models to predict regions of grasp of an object given its image" which was done as part of the curriculum in Machine Learning course at PES University.
 
### Contributors :
 1. Manoj Surya K - (https://sites.google.com/view/manojsuryakashi)
 2. Prasanna Venkatesan K S - (https://prassi07.github.io)
 3. Pritesh J Shah - (https://www.linkedin.com/in/pritesh-shah-6b733b152)
 
 This project aims at evaluating performance for different supervised models in predicting grasp locations for objects using its image. Experiments were conducted for different models like Logistic Regression, Logistic Regression with regularization, Feed Forward Neural Networks and Support Vector Machine. 

#### Results obtained were like this:
![Results](https://github.com/prassi07/RobotArmGraspPrediction/blob/main/Results.PNG?raw=true)

 
 ---
 ### Dataset:
  We used datasets provided by :
  "Personal Robotics: Grasping - Robot Learning Lab at Cornell." http://pr.cs.cornell.edu/grasping/rect_data/data.php, Accessed 30 Apr. 2018.
  
 ---
 
 ### Code Description :
 
 #### Logistic Regression
The code for the logistic regression model is split into the following files.
1. calc_cost_error.m (Function script) : Function to calculate the cost in every iteration step.
2. train_logistic.m (Function script) :  Function to train the model with the given dataset as the input. Takes in 3 input
arguments, the weight vector ‘w’, the input feature vector ‘x’ and the target vector ‘t’.
3. rectPlot.m (Function script) :  Function to plot the grasping rectangles on the given image. Takes in 2 input arguments, the
predicted output vector ‘y’ and the image file number ‘fileNumber’.
4. test_logistic.m (main testing script) : Script to test the trained weights on to any image.
5. processed_load.m (main training script) : Script that calls the train_logistic.m function, to train the network.

Scripts to run in sequence— train_logistic.m, test_logistic.m.

#### Feed forward Neural Networks
1. NNtrain.m is the file to train the neural network.
2. NNtest.m is the file to test the neural network. The parameters ‘start’, ‘finish’ and ‘fileNumber’ are to be modified as per the test image.
3. rectPlot.m is the function to plot the grasping rectangles on the given image. Takes in 2 input arguments, thepredicted output vector ‘y’ and the image file number ‘fileNumber’.

Scripts to run in sequence— NNtrain.m, NNtest.m.

### Support Vector Machine

1. SVM.m trains the SVM model and also tests the model over the specified range of images.
2. rectPlot.m is the function to plot the grasping rectangles on the given image. Takes in 2 input arguments, the
predicted output vector ‘y’ and the image file number ‘fileNumber’.
