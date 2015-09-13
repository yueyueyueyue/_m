axis_x = [-300 300; 0 0; 0 0]*10;
axis_y = [0 0; -500 500; 0 0]*10;
axis_z = [0 0; 0 0; -600 600]*10;

%the eight vertexs of cube
cube_vts =   [[100 100 100]' ... %1
            [-100 100 100]' ...  %2
            [100 -100 100]' ...  %3
            [100 100 -100]' ...  %4
            [-100 -100 100]' ... %5
            [-100 100 -100]' ... %6
            [100 -100 -100]' ... %7
            [-100 -100 -100]'];  %8

%the center of cube
cube_ctr = [0 250 -250]';


%move the cube to the center
cube_vts = cube_vts + repmat(cube_ctr, 1, size(cube_vts, 2));
cube_vts = cube_vts*10;

%get points for the 12 edges of the cube
CUBE = [];
CUBE = [CUBE getPoints3D([cube_vts(:, 1) cube_vts(:, 2)])];
CUBE = [CUBE getPoints3D([cube_vts(:, 1) cube_vts(:, 3)])];
CUBE = [CUBE getPoints3D([cube_vts(:, 1) cube_vts(:, 4)])];
CUBE = [CUBE getPoints3D([cube_vts(:, 6) cube_vts(:, 4)])];
CUBE = [CUBE getPoints3D([cube_vts(:, 6) cube_vts(:, 2)])];
CUBE = [CUBE getPoints3D([cube_vts(:, 8) cube_vts(:, 5)])];
CUBE = [CUBE getPoints3D([cube_vts(:, 8) cube_vts(:, 6)])];
CUBE = [CUBE getPoints3D([cube_vts(:, 8) cube_vts(:, 7)])];
CUBE = [CUBE getPoints3D([cube_vts(:, 3) cube_vts(:, 5)])];
CUBE = [CUBE getPoints3D([cube_vts(:, 3) cube_vts(:, 7)])];
CUBE = [CUBE getPoints3D([cube_vts(:, 2) cube_vts(:, 5)])];
CUBE = [CUBE getPoints3D([cube_vts(:, 4) cube_vts(:, 7)])];

xlabel('z')
ylabel('x')
zlabel('y')

grid on
axis auto equal
hold on

plot3(axis_x(3,:),axis_x(1,:),axis_x(2,:), 'g');
plot3(axis_y(3,:),axis_y(1,:),axis_y(2,:), 'g');
plot3(axis_z(3,:),axis_z(1,:),axis_z(2,:), 'r');

plot3(CUBE(3,:), CUBE(1,:), CUBE(2,:), 'r.', 'MarkerSize', 1);



f = 100;
f=f*10;

zPLUSf       = repmat(CUBE(3, :), 3, 1);
zPLUSf       = f*ones(size(zPLUSf)) + zPLUSf;
CUBE_prime = f*CUBE./zPLUSf;


plot3(CUBE_prime(3,:), CUBE_prime(1,:), CUBE_prime(2,:), 'b.', 'MarkerSize', 1);




