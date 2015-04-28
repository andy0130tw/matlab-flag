function main()
  % Draw 9 flags
  % by Andy Pan, Andy Nien, Yun-Lin Ho, 2015/4/27
  % NTU Math Software 2015 Spring

  clf;
  shg;

  prepareCanvas(1, 300, 200);
  drawFlagFrance();

  prepareCanvas(2, 25, 18);
  drawFlagIceland();

  prepareCanvas(3, 60, 30);
  drawFlagEngland(0, 0, 60, 30);

  prepareCanvas(4, 24700, 13000);
  drawFlagUSA();

  prepareCanvas(5, 240, 120);
  drawFlagCook();

  prepareCanvas(6, 30, 20);
  drawFlagChina();

  prepareCanvas(7, 240, 160);
  drawFlagTaiwan();

  prepareCanvas(8, 4320, 2880);
  drawFlagSingapore();

  prepareCanvas(9, 144, 96);
  drawFlagKorea();

end

function prepareCanvas(n, w, h) 
  subplot(3, 3, n);
  axis equal, axis([0, w, 0, h]);
  hold on, axis off;
end

function drawFlagFrance()
  drawRectangleXY(  0,   0,  90, 200, '0055A4');
  drawRectangleXY( 90,   0, 189, 200, 'FFFFFF');
  drawRectangleXY(189,   0, 300, 200, 'EF4135');
end

function drawFlagIceland()
  BLUE  = '0048E0';
  WHITE = 'FFFFFF';
  RED   = 'FF0F00';
  drawRectangleXY(0,0,25,18, BLUE);
  drawRectangleXY(7,0,11,18, WHITE);
  drawRectangleXY(0,7,25,11, WHITE);
  drawRectangleXY(8,0,10,18, RED);
  drawRectangleXY(0,8,25,10, RED);
end

function drawFlagEngland(x1, y1, x2, y2)
  BLUE = '00427D';
  WH   = 'FFFFFF';
  RD   = 'CF142B';
  
  w  = x2 - x1;
  h  = y2 - y1;
  hw = w / 2;
  hh = h / 2;

  drawRectangleXY(x1, y1, x2, y2, BLUE); 
  C = [1, 0, 0, 1, 1, 1];
  D = [1, -1] * atan2(1,2);

  for d = 1:2
    for i = 1:6
      bx0 = [0, 0, hw * sqrt(5) / 2] - hw * (sqrt(5) - 2) / 2 + x1;
      by0 = ([11, 12, 12] + i) / 30 * h + y1;
      
      [bx1, by1] = rotate(bx0, by0, D(d), hw + x1, hh + y1);
      [bx2, by2] = rotate(bx1, by1,   pi, hw + x1, hh + y1);
      
      cc = RD; if C(i) == 1 cc = WH; end
      drawRectangle([bx1(1), by1(1)], [bx1(2), by1(2)], [bx1(3), by1(3)], cc);
      drawRectangle([bx2(1), by2(1)], [bx2(2), by2(2)], [bx2(3), by2(3)], cc);
    end
  end

  M = [  
          0, 20 / 30,       1, 10 / 30;
    25 / 60,       1, 35 / 60,       0;
          0, 18 / 30,       1, 12 / 30;
    27 / 60,       1, 33 / 60,       0
  ];

  M(:, 1) = M(:, 1) * w + x1;
  M(:, 3) = M(:, 3) * w + x1;
  M(:, 2) = M(:, 2) * h + y1;
  M(:, 4) = M(:, 4) * h + y1;
  
  G = [0, 0, 1, 1];

  for i = 1:4
    A = M(i, :);
    cc = WH;
    if G(i) == 1 cc = RD; end
     drawRectangleXY(A(1), A(2), A(3), A(4), cc);
  end
end

function drawFlagUSA()
  RED   = 'B22234';
  BLUE  = '3C3B6E';
  WHITE = 'FFFFFF';
  
  drawRectangleXY(0, 0, 24700, 13000, RED);
  for i = 1:6
    drawRectangleXY(0, 2000 * i, 24700, 2000 * i - 1000, WHITE);
  end

  drawRectangleXY(0, 13000, 9876, 6000, BLUE);

  for t = 0:5
    for r = 0:4
      pp = [823 + 1646 * t, 12300 - 1400 * r];
      drawStar(pp, pp + [0, 400], WHITE);
    end
  end

  for t = 1:5
    for r = 1:4
      pp = [1646 * t, 13000 - 1400 * r];
      drawStar(pp, pp + [0, 400], WHITE);
    end
  end

end

function drawFlagCook()
  BLUE  = '00427D';
  WHITE = 'FFFFFF';
  
  drawRectangleXY(0,  0, 240, 120, BLUE);
  drawFlagEngland(0, 60, 120, 120);

  drawRectangleXY(  0,  0, 120,  60, BLUE);
  drawRectangleXY(120, 60, 240, 120, BLUE);

  pp = [180, 60];
  v1 = circleArrange(pp, pp + [0, 44], 15);
  v2 = circleArrange(pp, pp + [0, 53], 15);
  for t = 1:15
    drawStar(v1(t, :), v2(t, :), WHITE);
  end

end

function drawFlagChina()
  RED    = 'DE2910';
  YELLOW = 'FFDE00';

  drawRectangleXY(0, 0, 30, 20, RED);
  pp = [
    10, 18;
    12, 16;
    12, 13;
    10, 11;
  ];
  theta = [pi / 2 + atan(3/5), pi / 2 + atan(1/7), atan(7/2), atan(5/4)];

  drawStar([5, 15], [5, 18], YELLOW);
  for i = 1:4
    p = pp(i, :);
    [xx, yy] = rotate(p(1), p(2) + 1, theta(i), p(1), p(2));
    drawStar(p, [xx, yy], YELLOW);
  end
end

function drawFlagTaiwan()
  RED   = 'FE0000';
  BLUE  = '000095';
  WHITE = 'FFFFFF';
  
  pp = [60, 120];

  drawRectangleXY(0, 0, 240, 160, RED);
  drawRectangleXY(0, 80, 120, 160, BLUE);
  drawStar12(pp, [60, 150], WHITE);
  drawCircle(pp, 17, BLUE);
  drawCircle(pp, 15, WHITE);
end

function drawFlagSingapore()
  RED   = 'ED2939';
  WHITE = 'FFFFFF';

  drawRectangleXY(0, 0, 4320, 1440, WHITE);
  drawRectangleXY(0, 1440, 4320, 2880, RED);
  drawCircle([910, 2160], 530, WHITE);
  drawCircle([1200, 2160], 580, RED);

  pp = [1200, 2160];
  x = circleArrange(pp, pp + [0, 304], 5);
  for i = 1:5
    drawStar(x(i, :), x(i, :) + [0, 128], WHITE);
  end
  
end

function drawFlagKorea()
  BLUE  = '003478';
  WHITE = 'FFFFFF';
  RED   = 'CC0C2F';

  dig = atan(2 / 3);
  drawRectangleXY(0, 0, 144, 96, WHITE);

  p0 = [72, 48];
  [xx, yy] = rotate(96, 48, -dig, 72, 48);
  drawSemiCircle(p0, [xx, yy], RED);
  [xx, yy] = rotate(96, 48, pi - dig, 72, 48);
  drawSemiCircle(p0, [xx, yy], BLUE);
  
  pp = [cos(dig), -sin(dig)] * 12;
  drawCircle(p0 + pp, 12, BLUE);
  drawCircle(p0 - pp, 12, RED);

  brk = [0, 0, 0; 0, 1, 0; 1, 0, 1; 1, 1, 1];
  theta = [dig, pi / 2] * [-1, 1; 1, 1; 1, -1; -1, -1]';
  
  for i = 1:4
    for j = 1:3
      pcy = [1, 1, 1] * 92 + [-1, -1, 1] * 2 + 6 * (j - 2);
      
      if brk(i, j)
        % break into two pieces instead for better view in small viewport
        pcx = [60, 71, 71];
        drawFlagKorenBar(pcx, pcy, theta(i));
        drawFlagKorenBar(pcx + 13, pcy, theta(i));
      else
        pcx = [1, 1, 1] * 72 + [-1, 1, 1] * 12;
        drawFlagKorenBar(pcx, pcy, theta(i));
      end
    end
  end
end

function drawFlagKorenBar(x, y, theta)
  BLACK = '000000';
  [xx, yy] = rotate(x, y, theta, 72, 48);
  drawRectangle([xx(1), yy(1)], [xx(2), yy(2)], [xx(3), yy(3)], BLACK);
end
