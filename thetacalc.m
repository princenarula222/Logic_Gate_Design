function [theta1,theta2] = thetacalc(theta1,theta2,X,Y,h,h_)

m=size(X,2);

err3=h-Y;
del2=(err3*h_')/m;
err2=(theta2'*err3).*h_.*(1-h_);
del1=(err2*X')/m;

theta1=theta1-0.8*del1;
theta2=theta2-0.8*del2;