function Vol = voltage(V,R)
  R1 = R(1);
  R2 = R(2);
  R3 = R(3);
  R4 = R(4);
  R5 = R(5);
  R6 = R(6);
  R7 = R(7);
  R8 = R(8);
  
  %Writing the linear equations
  eq1 = [(1/R5) + (1/R6) + (1/(R8+R4)), -(1/(R8+R4)), 0]; 
  eq2 = [(-1/(R8+R4)),(1/(R3+R4)) + (1/(R8+R4)) + (1/(R7+R4)),(1/(R7+R4))];    
  eq3 = [0, (-1/(R7+R4)) ,(1/R1) + (1/(R7+R4)) + (1/R2)]; 
  eq4 = [(V/R5); (V/(R3+R4)); (V/R1)]; 
  % Compute the values to solve the matrix with the form (Ax=B)
  M = [eq1(1),eq1(2),eq1(3); eq2(1),eq2(2),eq2(3);eq3(1),eq3(2),eq3(3)];
  Vol = M\eq4; 
end
