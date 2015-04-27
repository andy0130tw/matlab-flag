function drawRectangle(X1, X2, X3, color)
  %   drawRectangle
  %   variable dictionary
  %   X1, X2, X3 dots
  %   color      color

  X4 = X1 - X2 + X3;
  X = [X1(1) X2(1) X3(1) X4(1) X1(1)];
  Y = [X1(2) X2(2) X3(2) X4(2) X1(2)];
  fill(X, Y, cc(color), 'edgecolor', 'none'); 

end
