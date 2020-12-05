%funciones predefinidas
f(x)= log(x)
taylor(f, x, 2, 'order', 8) %Taylor, 2 es donde está centrado y 8 el grado

%REGLA DEL TRAPECIO COMPUESTA
a=0;
b=3;
n=20; 
h=(b-a)/n; %Para la integral de x^2 entre 0 y 3
x=a:h:b; 
y=x.^2; 
h*trapz(y)

%Función inversa
f(x)=(2*x+3)/(5-x)
solve(f==y, x)