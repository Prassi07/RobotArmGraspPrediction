function w=changing_tV(FV,tV)

w=randn(1901,1901);
for i=1:length(tV)
    if(tV(i)==-1)
        tV(i)=0;
    end
end
p=logsig(FV*w);
wn=w-(((p-tV)'*FV)*0.2);
end