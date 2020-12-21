 x=load('x.txt');
 t=load('y.txt');
% x=x(4953:4960,:);
% t=t(4953:4960,:);
x=x(4901:7037);
t=t(4901:7037);
display('loaded');
for i=1:length(t)
    if(t(i)==-1)
        t(i)=0;
    end
end
display('t changed')

y_test=logsig(x*w);
misclassification=0;
for i=1:length(y_test)
    if y_test(i)>=0.5
        y_test(i)=1;
    else
        y_test(i)=0;
    end
    if(y_test(i)~=t(i))
        misclassification=misclassification+1;
    end
end
display('missclassification');
display(misclassification/length(t));

rectPlot(y_test,0715);