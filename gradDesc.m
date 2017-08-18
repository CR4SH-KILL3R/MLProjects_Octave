function [retVal] = gradDesc (theta,X,y,alpha,iter)
  m=size(X,1);
  J_history = ones(iter,1);
  theta_history = ones(iter,2);
  for i=1:iter
    predictions = X*theta-y;
    delta=(1/m)*(X'*predictions);
    temp = theta - alpha*(delta);
    theta = temp;
  end
  costFunction(X,y,theta)
  retVal=theta; 
endfunction
