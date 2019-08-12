function [a, b, c, d] = corners(C)

p = size(C);

a = C(1,1);

b = C(1,p(2));

c = C(p(1),1);

d = C(p(1),p(2));
