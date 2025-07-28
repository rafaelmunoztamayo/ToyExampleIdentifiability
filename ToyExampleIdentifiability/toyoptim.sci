// function to perform the optimization of the cost function to find the best parameter estimates of the model 

// by Rafael Muñoz-Tamayo, 2025
clear 

// Calling the files to be used 

exec('toyload.sci');
exec('toy.sci');
exec('toycost.sci');


param0  =  [ 3.0 1.5]; // initial guess of the parameters 
//param0  =  [ ];

//param0 = log(param0); // log transformation
opt = optimset ( "Display" , "iter" );

[paramS fvalH] = fminsearch(toycost,param0,opt);
JS = toycost(paramS);

model2param = paramS; 
disp('The estimated parameters p1,p2 are: ',paramS)


// exporting the identified parameters 

save("model2param.sod", "model2param");
