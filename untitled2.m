clear;
close all;
clc;

L = 1;
dx = 0.02;


npoints = (L/dx) + 1;
Uint = zeros(npoints,1);
Uint(1) = 1;
Uint(end) = 2;
[t,U] = ode45(@(t,U) MOL(t,U,L,dx),[0 0.5],Uint);


x = linspace(0,L,npoints);
[X,T] = meshgrid(x,t);

r = linspace(1,0,100);
b = linspace(0,1,100);
g= [linspace(0,1,50), linspace(1,0,50)];

mymap = [b;g;r];

contourf(T,X,U,20)
colormap(mymap')
xlabel("time [s]");
ylabel("length [m]");
a=colorbar;
ylabel(a,'U','FontSize',16)

function dUdt = MOL(t, U, L, dx)
    U(1) = 1;
    U(end) = 2;
    
    npoints = (L /dx)+1;
    dUdt = zeros(npoints,1);
    
    
    dUdt(1) = 0;
    for i=2:npoints-1
        dUdt(i) =((U(i+1)-U(i-1))/(2*dx))^2 + U(i)*((U(i+1) - 2*U(i) + U(i-1))/(dx^2));
    end
    dUdt(end) = 0;


end
