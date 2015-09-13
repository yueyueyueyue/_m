function XY = getPoints( P )
%GETPOINTS generate points the graph. The points must be integral!
%   P=[x1, x2, x3, ..., xn; y1, y2, y3, ..., yn]
%   XY = []
%   generate integral points between [x1, y1]' and [x2, y2]'
%   XY = [XY; XY_]
%   generate integral points between [x2, y2]' and [x3, y3]'
%   XY = [XY; XY_]
%   ...
%   generate integral points between [xn-1, yn-1]' and [xn, yn]'
%   XY = [XY; XY_]

XY = [];
%points between[xy1, xy2)
for i=1:size(P, 2)-1
    x1 = P(1, i); y1 = P(2, i);
    x2 = P(1, i+1); y2 = P(2, i+1);
    steps = max(abs(x2-x1)+1, abs(y2-y1)+1);
    X = linspace(x1, x2, steps);
    Y = linspace(y1, y2, steps);
    XY_ = [X(:, 1:end-1);Y(:, 1:end-1)];
    XY = [XY XY_];
end
XY = [XY P(:, end)];

end

