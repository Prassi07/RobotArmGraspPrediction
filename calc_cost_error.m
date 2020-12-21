function error = calc_cost_error(w,x,t)
% double a;
a=logsig(x*w);

%error=sum(w.*log(1+exp(-a)));
error=sum(-t.*log(a+0.05)-(1-t).*log(1.05-a))/length(t);


% function error=calc_cost_error(y,t)
% error1=0;
% error2=0;
% for i=1:length(t)
%     if t(i)==0
%         error1=0;
%         for j=1:length(t)
%             error1=error1+abs((log(1.2+y(i))));
%         end
%     
%     else
%         error2=0;
%         for k=1:length(t)
%             error2=error2+abs((log(y(i)+0.2)));
%             
%         end
%     end
% 
% end
% error=error1+error2;
% 
% end