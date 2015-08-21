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
CC = getPoints(CC); 
CC = CC - repmat(CC_Center, 1, size(CC, 2)); %letter CC in format [x1 [x2]; y1 [y2]]

C_moveto = [-35, 12.5]'*10;
CC = CC + repmat(C_moveto, 1, size(CC, 2));
%%%%%%%%%%%%%%%%%%%%%%%%%
%line(CC(1, :), CC(2, :));
plot(CC(1, :), CC(2, :));


%C
C_center = [1, 1.5]'*10;
C = [2 1 0 0 1 2; 0 0 1 2 3 3]*10;
C = getPoints(C);
C = C - repmat(C_center, 1, size(C, 2)); %letter C in format [x1 [x2]; y1 [y2]]

C_moveto = [-25, 12.5]'*10;
C = C + repmat(C_moveto, 1, size(C, 2));
%%%%%%%%%%%%%%%%%%%%%%%
%line(C(1, :), C(2, :));
plot(C(1, :), C(2, :));

%D
D_center = [1, 1.5]'*10;
D = [1 2 2 1 0 0 1; 3 2.5 0.5 0 0 3 3]*10;
D = getPoints(D);
D = D - repmat(D_center, 1, size(D, 2)); %letter D in format [x1 [x2]; y1 [y2]]

D_moveto = [-15, 12.5]'*10;
D = D + repmat(D_moveto, 1, size(D, 2));
%%%%%%%%%%%%%%%%%%%%%%%
%line(D(1, :), D(2, :));
plot(D(1, :), D(2, :));







%%%%%DRWA THE CC AFTER LENS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f = 100;
O = CC;
uOx = 0 - O(1, :);
uOy = O(2, :);

fO_ = ones(size(uOx))*f;
vOx = (uOx.*fO_)./(uOx-fO_);
vOy = -uOy.*(vOx-fO_)./fO_;
%%%%%%%%%%%%%%%%%%%%%%%%%
%line(vOx, vOy);
plot(vOx, vOy);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%DRWA THE C AFTER LENS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f = 100;
O = C;
uOx = 0 - O(1, :);
uOy = O(2, :);

fO_ = ones(size(uOx))*f;
vOx = (uOx.*fO_)./(uOx-fO_);
vOy = -uOy.*(vOx-fO_)./fO_;
%%%%%%%%%%%%%%%%%%%%%%%%%
%line(vOx, vOy);
plot(vOx, vOy);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%DRWA THE D AFTER LENS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f = 100;
O = D;
uOx = 0 - O(1, :);
uOy = O(2, :);

fO_ = ones(size(uOx))*f;
vOx = (uOx.*fO_)./(uOx-fO_);
vOy = -uOy.*(vOx-fO_)./fO_;
%%%%%%%%%%%%%%%%%%%%%%%%%
%line(vOx, vOy);
plot(vOx, vOy);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%Box1
B1_center = [1, 1.5]'*10;
B1 = [3 3 0 0 3; 3 0 0 3 3]*10;
B1 = getPoints(B1);

B1 = B1 - repmat(B1_center, 1, size(B1, 2)); 

B1_moveto = [-35, 22.5]'*10;
B1 = B1 + repmat(B1_moveto, 1, size(B1, 2));
%%%%%%%%%%%%%%%%%%%%%%%
plot(B1(1, :), B1(2, :));
%%%%%DRWA THE Box AFTER LENS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f = 100;
O = B1;
uOx = 0 - O(1, :);
uOy = O(2, :);

fO_ = ones(size(uOx))*f;
vOx = (uOx.*fO_)./(uOx-fO_);
vOy = -uOy.*(vOx-fO_)./fO_;
%%%%%%%%%%%%%%%%%%%%%%%%%
plot(vOx, vOy);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%Box2
B2_center = [1, 1.5]'*10;
B2 = [3 3 0 0 3; 3 0 0 3 3]*10;
B2 = getPoints(B2);

B2 = B2 - repmat(B2_center, 1, size(B2, 2)); 

B2_moveto = [-25, 22.5]'*10;
B2 = B2 + repmat(B2_moveto, 1, size(B2, 2));
%%%%%%%%%%%%%%%%%%%%%%%
plot(B2(1, :), B2(2, :));
%%%%%DRWA THE Box AFTER LENS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f = 100;
O = B2;
uOx = 0 - O(1, :);
uOy = O(2, :);

fO_ = ones(size(uOx))*f;
vOx = (uOx.*fO_)./(uOx-fO_);
vOy = -uOy.*(vOx-fO_)./fO_;
%%%%%%%%%%%%%%%%%%%%%%%%%
plot(vOx, vOy);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%Box3
B3_center = [1, 1.5]'*10;
B3 = [3 3 0 0 3; 3 0 0 3 3]*10;
B3 = getPoints(B3);

B3 = B3 - repmat(B3_center, 1, size(B3, 2)); 

B3_moveto = [-15, 22.5]'*10;
B3 = B3 + repmat(B3_moveto, 1, size(B3, 2));
%%%%%%%%%%%%%%%%%%%%%%%
plot(B3(1, :), B3(2, :));
%%%%%DRWA THE Box AFTER LENS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f = 100;
O = B3;
uOx = 0 - O(1, :);
uOy = O(2, :);

fO_ = ones(size(uOx))*f;
vOx = (uOx.*fO_)./(uOx-fO_);
vOy = -uOy.*(vOx-fO_)./fO_;
%%%%%%%%%%%%%%%%%%%%%%%%%
plot(vOx, vOy);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
