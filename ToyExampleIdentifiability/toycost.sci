// function to define the cost function to be optimized (error)

// by Rafael Muñoz-Tamayo, 2025
function[J]=toycost(param)
 
// exec('toy.sci');

global Cinit st t_1 y_1  

parameters = param;
//parameters = exp(param);


y =ode(Cinit,0,st,list(toy,parameters)); // Differential form
ym_1=  (y(1,:))';


Error = (y_1-ym_1).^2; 


J=sum(Error); // sum of squared errors


endfunction
