function drawStar12(O, x1, color)
  theta = atan2(x1(2) - O(2), x1(1) - O(1));
  t = linspace(theta,theta + pi * 2, 25);
  r = norm(O - x1);
  R = r / 2 / cos(pi / 12);
  X = cos(t);
  Y = sin(t);

  p = [repmat([r, R], 1, 12), r];
  
  X = X .* p + O(1);
  Y = Y .* p + O(2);
  fill(X, Y, cc(color), 'edgecolor', 'none');
end
