function [ x1 , y1 ] = rotate( x , y , theta , a , b )
  % ROTATE
  % x     input  x-coordinate
  % y     input  y-coordinate
  % theta input  the rotate angle
  % a     input  the origin of rotate
  % b     input  the origin of rotate
  % x1    output x-coordinate after rotate
  % y1    output y-coordintae after rotate

x1 = (x - a) * cos(theta) - (y - b) * sin(theta) + a;
y1 = (x - a) * sin(theta) + (y - b) * cos(theta) + b;
end
