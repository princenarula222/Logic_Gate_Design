function [j] = jval(h,Y)

m=size(Y,1);
C=-(1/m).*(Y.*log(h) + (1-Y).*log(1-h));
j=sum(C(:));