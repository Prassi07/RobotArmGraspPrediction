
 x=load('x.txt');
 t=load('y.txt');
 x=x(1:4900,:);
 t=t(1:4900,:);
display('loaded');
for i=1:length(t)
    if(t(i)==-1)
        t(i)=0;
    end
end
display('t changed')
%wo=zeros(1901,1);
load('weights_1517.mat');
wo=w;
display('train calling');
w=train_logistic(wo,x,t);
ynew=logsig(x*w);
misclassification=0;
for i=1:length(ynew)
    if ynew(i)>=0.5
        ynew(i)=1;
    else
        ynew(i)=0;
    end
    if(ynew(i)~=t(i))
        misclassification=misclassification+1;
    end
end
display('missclassification');
display(misclassification/length(t));
