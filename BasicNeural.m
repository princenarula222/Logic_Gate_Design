clear all;

load trainX.dat;
load trainY.dat;

X=trainX';
m=size(X,2);
p=ones(1,m);
X=[p ; X];
Y=trainY;
n=size(X,1);
theta1=rand(2,n);
W=theta1*X(:,1);
t=size(W,1);
theta2=rand(1,t);

h_=hval(theta1,X);
h=hval(theta2,h_);
prev=jval(h',Y);
epsi=inf;

while epsi>0.000000001
    [theta1,theta2]=thetacalc(theta1,theta2,X,Y',h,h_);
    h_=hval(theta1,X);
    h=hval(theta2,h_);
    curr=jval(h',Y)
    epsi=prev-curr
    prev=curr;
end

theta1
theta2

load testX.dat;
load testY.dat;
X=testX';
m=size(X,2);
p=ones(1,m);
X=[p ; X];
Y=testY

h_=hval(theta1,X);
h=hval(theta2,h_);
h=h'>0.5
plotconfusion(Y',h');