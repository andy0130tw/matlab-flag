function drawCircle(O, r, color)
  %   DRAWCIRCLE 
  %   variable dictionary
  %   O     center
  %   r     radius
  %   color color

  t = linspace(0, 2 * pi, 500);
  X = O(1) + r * cos(t);
  Y = O(2) + r * sin(t);

  fill(X, Y, cc(color), 'edgecolor', 'none');
end
