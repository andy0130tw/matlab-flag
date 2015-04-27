function X = circleArrange(O, P, count)
  X = [];
  t0 = atan2(P(2) - O(2), P(1) - O(1));
  for i = 1:count
    t = i * 2 * pi / count + t0;
    r = norm(P - O);
    X = [X; O + [cos(t), sin(t)] * r];
  end
end
