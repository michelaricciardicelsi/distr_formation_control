
close all;

%% Plot the swarm evolution and final formation:

% plot the evolution

for s = 1:3:3*n %ciclo per ogni agente
    
    for i=1:length(tout)   
        
        x = state.data(:,s);
        y = state.data(:,s+1);
        z = state.data(:,s+2);
 

    end
    
    plot3(x(:),y(:),z(:),'-x')
    hold on
    grid on

end

% plot the formation

pf = state.data(length(tout),:);

    
for s = 4:3:3*(n-1) %ciclo per ogni agente    
    
    plot3([pf(s), pf(s+3)], [pf(s+1), pf(s+4)], [pf(s+2), pf(s+5)],'--k');

end
    
plot3([pf(3*n-2), pf(4)], [pf(3*n-1), pf(5)], [pf(3*n), pf(6)],'--k');
































% close all
% 
% for i=1:length(tout)
%     
%   figure(1)
% %   plot(x(i),y(i),'or');
%   plot3(x(i),y(i),z(i),'or');
%   hold on
%   
%   x = state_2.data(:,1);
%   y = state_2.data(:,2);
%   z = state_2.data(:,3);
% %   plot(x(i),y(i),'ob');
%   plot3(x(i),y(i),z(i),'ob');
%   hold on;
%   
%   
%   x = state_3.data(:,1);
%   y = state_3.data(:,2);
%   z = state_3.data(:,3);
% %   plot(x(i),y(i),'ok');
%   plot3(x(i),y(i),z(i),'ok');
%   hold on;
%   
%   x = state_4.data(:,1);
%   y = state_4.data(:,2);
%   z = state_4.data(:,3);
% %   plot(x(i),y(i),'oy');
%   plot3(x(i),y(i),z(i),'oy');
%   hold on;  
%    
%   grid on
%   xlabel('X')
%   ylabel('Y')
%   zlabel('Z')
%   
%   
% end
% 
% % % line 1 2
% % line([state_1.data(length(tout),1) state_2.data(length(tout),1)],[state_1.data(length(tout),1) state_2.data(length(tout),2)])
% % % line 2 3
% % line([state_2.data(length(tout),1) state_3.data(length(tout),1)],[state_2.data(length(tout),1) state_3.data(length(tout),2)])
% % % line 3 4
% % line([state_3.data(length(tout),1) state_4.data(length(tout),1)],[state_3.data(length(tout),1) state_4.data(length(tout),2)])
% % % line 4 1
% % line([state_4.data(length(tout),1) state_1.data(length(tout),1)],[state_4.data(length(tout),1) state_1.data(length(tout),2)])
