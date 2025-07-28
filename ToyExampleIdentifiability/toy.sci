// function to represent an ODE model

// by Rafael Muñoz-Tamayo, 2025

// The example is taken from Villaverde and Barreiro (2016)

// Villaverde AF and Barreiro A 2016. Identifiability of large nonlinear biochemical networks. MATCH Communications in Mathematical and in Computer Chemistry 76, 259–296

function[dX]=toy(t,X,parameters)
    
 
   p1 = parameters(1);
   p2 = parameters(2);



//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
// State Variables
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x1 = X(1);
x2 = X(2);

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
//% State equations
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	 dX(1)=p1*x1*x2;
	 dX(2)=p2;


    endfunction
