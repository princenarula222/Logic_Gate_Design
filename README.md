# Logic_Gate_Design
Implementing logic gates (AND, OR, XOR) using a neural network in MATLAB

This repository provides the implementation of a two layered neural network which uses sigmoid activations.
Using the provided training and test sets, the neural network can be trained so as to mimic an OR logic gate.
 
Run 'BasicNeural.m' to train and test the model.
 
You may modify the training and test sets so as to train the neural network to mimic other logic gates such as AND, XOR and so on.

Input to the neural network is a two feature vector, individual values of which can be inferred as follows:
1. Value below 0.5 is treated as logic 0.
2. Value above 0.5 is treated as logic 1.

# OR Gate
	INPUT 1         INPUT 2         OUTPUT
     0               0               0
	 0               1               1
	 1               0               1
	 1               1               1
