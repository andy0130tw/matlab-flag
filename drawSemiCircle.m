function drawSemiCircle( O,x1,color )
  %   DRAWHEMICIRCLE 
  %   variable dictionary
  %   O     center
  %   x1    dot
  %   color color

  r = norm(x1 - O);
  theta = atan2(x1(2) - O(2), x1(1) - O(1));
  t = linspace(theta, theta + pi, 250);
  X = O(1) + r * cos(t);
  Y = O(2) + r * sin(t);
  X = [X, x1(1)];
  Y = [Y, x1(2)];
  fill(X, Y, cc(color), 'edgecolor', 'none');
end
