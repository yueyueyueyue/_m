function XYZ = getPoints3D( P )
%GETPOINTS generate points the graph. The points must be integral!
%   P=[x1, x2, x3, ..., xn; y1, y2, y3, ..., yn; z1, z2, z3, ..., zn]
%   XY = []

XYZ = [];
%points between[xyz1, xyz2)
for i=1:size(P, 2)-1
    x1 = P(1, i); y1 = P(2, i); z1 = P(3, i);
    x2 = P(1, i+1); y2 = P(2, i+1); z2 = P(3, i+1);
    steps = max([abs(x2-x1)+1, abs(y2-y1)+1, abs(z2-z1)+1]);
    X = linspace(x1, x2, steps);
    Y = linspace(y1, y2, steps);
    Z = linspace(z1, z2, steps);
    XYZ_ = [X(:, 1:end-1);Y(:, 1:end-1);Z(:, 1:end-1)];
    XYZ = [XYZ XYZ_];
end
XYZ = [XYZ P(:, end)];

end


