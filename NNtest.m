% x=load('x.txt');
% t=load('y.txt');
% display('loaded');
% for i=1:length(t)
%     if(t(i)==-1)
%         t(i)=0;
%      end
%  end
% display('t changed')
% x = x';
% t = t';

start=7031;
finish=7037;
img=1034;
y1=net(x(:,start:finish));
t1=t(start:finish);

for i=1:length(y1)
    if(y1(i)>=0.5)
        y1(i)=1;
    else
        y1(i)=0;
    end
end

count=0;
for i=1:length(t1)
    if(y1(i)~=t1(i))
    count=count+1;
    end
end

misclass=count/length(t1);
disp(misclass);
rectPlot(y1,img);
figure;
rectPlot(t1,img);