A = [23 54 6
 56 75 3
 98 32 0
 23 43 2 ];

[mm,nn] = size(A);
hold on
grid on
    plot3(A(:,1),A(:,2),A(:,3),'o')   
for i = 1:mm
    X1 = [A(i,1);0];
    Y1 = [A(i,2);0];
    Z1 = [A(i,3);0];
    plot3(X1,Y1,Z1)
end
view(-20,40)
xlabel( 'x');
ylabel( 'y');
zlabel( 'z');