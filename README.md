# MATLAB Flags

Andy Pan, Andy Nien, Yun-Lin Ho

A team assignment of Math Software 2015 Spring.<br/>
Written by Team 04.

## Some APIs
  1. `rotate(x, y, theta, a, b)`: Rotate point(s) `(x, y)` with respect to point `(a,b)` by the angle of `theta` ccw-ly.
  2. `drawRectangle(x1, x2, x3, color)`: Calculate `x4` and use the four points to draw a rectangle. Actually it can be used to draw parallelogram.
  3. `drawRectangleXY(x1, y1, x2, y2, color)`: A helper function to draw rectangles by a diagdonal `(x1, y1) -- (x2, y2)`.
  4. `drawCircle(O, r, color)`: Draw a circle with center `O` and radius `r`.
  5. `drawSemiCircle(O, P, color)`: Draw a hemicircle with center `O` and starting side `OP`.
  6. `drawStar(O, P, color)`: Draw a star with center `O`, using `P` as the first edge.
  7. `drawStar12(O, P, color)`: Almost the same as above but this has 12 edges.
  8. `circleArrange(O, P, count)`: Output a list of points separated on a circle equally, using `P` as starting point. Return `count` points as a `count * 2` matrix.
  9. `cc(hex)`: (Internal) Convert `hex` into a MATLAB RGB vector.

All colors specified in parameter `color` are 6-digits HEX colors like `#ABCDEF` and they are internally passed into `cc` function, so there is no `cc` occurrence in `main`.

## List of flags
  1. France
  2. Iceland
  3. England
  4. the USA
  5. Cook Islands
  6. China
  7. Taiwan
  8. Singapore
  9. Korea
