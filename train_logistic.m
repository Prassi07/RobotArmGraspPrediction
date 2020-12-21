function w= train_logistic(w,x,t)
display('train_logistic called');
double y;
y=logsig(x*w);
display('y calculated');
eta=0.0030;
m=length(t);
error=calc_cost_error(w,x,t);
display('error calculated');
display(error);
fprintf('Program paused. Press enter to continue.\n');
pause;
iteration=0;
%E=zeros(5000,0);
while(error>0.1)
    w=w-(eta*x'*(y-t)/m);
    y=logsig(x*w);
    error=calc_cost_error(w,x,t);
    display(error);
    %E(iteration+1)=error;
    % plot(iteration,E);
    % hold all;
    iteration=iteration+1;
    display(iteration);
    
end

end