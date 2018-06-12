function [h] = hval(theta,X)

h=1./(1+exp((-1)*theta*X));