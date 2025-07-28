// function to plot the model against the experimental data 

// by Rafael Muñoz-Tamayo, 2025
clear 

//global Cinit st t_1 y_1  

// Calling the files to be used 

exec('toyload.sci');
exec('toy.sci');

load("model2param.sod");

parameters =model2param;

//parameters = [];



y =ode(Cinit,0,st,list(toy,parameters)); // Differential form
ym_1=  (y(1,:))';
ym_2=  (y(2,:))';

Error = (y_1-ym_1).^2; 
J=sum(Error); // sum of squared errors


figure
plot(st,y_1,'ro');
plot(st,ym_1,'b');
xlabel('Time (h)');
ylabel('y1');
title('Model calibration');
legend('data','model prediction');
//
//figure
//plot(st,y_2,'ro');
//plot(st,ym_2,'b');
//xlabel('Time (h)');
//ylabel('y2');
//title('Model verification');
//legend('data','model prediction');
