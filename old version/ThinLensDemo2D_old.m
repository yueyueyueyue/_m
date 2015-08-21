axis_x = [-60, 60; 0, 0]*10; %axis x in format [x1 [x2]; y1 [y2]]
axis_y = [0, 0; -30, 30]*10; %axis y in format [x1 [x2]; y1 [y2]]

%subsidiary lines
L1 = [-20 -20; 28 -28]*10;
L2 = [-10 -10; 28 -28]*10;
L3 = [10 10; 28 -28]*10;
L4 = [20 20; 28 -28]*10;
H1 = [-40 40; 10 10]*10;
H2 = [-40 40; -10 -10]*10;

%draw the environment
axis auto equal
hold on
line(axis_x(1, :), axis_x(2, :), 'LineWidth', 2);
line(axis_y(1, :), axis_y(2, :), 'LineWidth', 2);
line(L1(1, :), L1(2, :), 'LineWidth', 1, 'Color', 'g');
line(L2(1, :), L2(2, :), 'LineWidth', 1, 'Color', 'g');
line(L3(1, :), L3(2, :), 'LineWidth', 1, 'Color', 'g');
line(L4(1, :), L4(2, :), 'LineWidth', 1, 'Color', 'g');
line(H1(1, :), H1(2, :), 'LineWidth', 1, 'Color', 'g');
line(H2(1, :), H2(2, :), 'LineWidth', 1, 'Color', 'g');

%draw objs before lens

%CC
CC_Center = [1, 1.5]'*10;
CC = [2 1 0 0 1 2; 0 0 1 2 3 3]*10;

CC = CC - repmat(CC_Center, 1, size(CC, 2)); %letter CC in format [x1 [x2]; y1 [y2]]

C_moveto = [-35, 12.5]'*10;
CC = CC + repmat(C_moveto, 1, size(CC, 2));
%%%%%%%%%%%%%%%%%%%%%%%%%
line(CC(1, :), CC(2, :));



%C
C_center = [1, 1.5]'*10;
C = [2 1 0 0 1 2; 0 0 1 2 3 3]*10;

C = C - repmat(C_center, 1, size(C, 2)); %letter C in format [x1 [x2]; y1 [y2]]

C_moveto = [-25, 12.5]'*10;
C = C + repmat(C_moveto, 1, size(C, 2));
%%%%%%%%%%%%%%%%%%%%%%%
line(C(1, :), C(2, :));


%D
D_center = [1, 1.5]'*10;
D = [1 2 2 1 0 0 1; 3 2.5 0.5 0 0 3 3]*10;

D = D - repmat(D_center, 1, size(D, 2)); %letter D in format [x1 [x2]; y1 [y2]]

D_moveto = [-15, 12.5]'*10;
D = D + repmat(D_moveto, 1, size(D, 2));
%%%%%%%%%%%%%%%%%%%%%%%
line(D(1, :), D(2, :));

%Box
B_center = [1, 1.5]'*10;
B = [3 3 0 0 3; 3 0 0 3 3]*10;

B = B - repmat(B_center, 1, size(B, 2)); %letter B in format [x1 [x2]; y1 [y2]]

B_moveto = [-15, 22.5]'*10;
B = B + repmat(B_moveto, 1, size(B, 2));
%%%%%%%%%%%%%%%%%%%%%%%
line(B(1, :), B(2, :));







f = 100;

%%%%%DRWA THE CC AFTER LENS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
O = CC;
uOx = 0 - O(1, :);
uOy = O(2, :);

fO_ = ones(size(uOx))*f;
vOx = (uOx.*fO_)./(uOx-fO_);
vOy = -uOy.*(vOx-fO_)./fO_;
%%%%%%%%%%%%%%%%%%%%%%%%%
line(vOx, vOy);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%DRWA THE C AFTER LENS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
O = C;
uOx = 0 - O(1, :);
uOy = O(2, :);

fO_ = ones(size(uOx))*f;
vOx = (uOx.*fO_)./(uOx-fO_);
vOy = -uOy.*(vOx-fO_)./fO_;
%%%%%%%%%%%%%%%%%%%%%%%%%
line(vOx, vOy);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%DRWA THE D AFTER LENS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
O = D;
uOx = 0 - O(1, :);
uOy = O(2, :);

fO_ = ones(size(uOx))*f;
vOx = (uOx.*fO_)./(uOx-fO_);
vOy = -uOy.*(vOx-fO_)./fO_;
%%%%%%%%%%%%%%%%%%%%%%%%%
line(vOx, vOy);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%DRWA THE Box AFTER LENS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
O = B;
uOx = 0 - O(1, :);
uOy = O(2, :);

fO_ = ones(size(uOx))*f;
vOx = (uOx.*fO_)./(uOx-fO_);
vOy = -uOy.*(vOx-fO_)./fO_;
%%%%%%%%%%%%%%%%%%%%%%%%%
line(vOx, vOy);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
