in=laod('x.txt');
target=load('y.txt');
Training=in(1:4900);
Group=target(1:4900);
%Train MOdel 
SVMModel=fitcsvm(Training,Group);
%Predict
TestInput=in(4901:7037);
TestOuput=predict(SVMModel,TestInput);