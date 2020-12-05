%Fichero de la sesion 1 dedicado a la practica


%Exercicio 1.1(a): 
(3^2+7)/2
%Exercicio 1(b):

2^3-((16*(7+24/3))/(2^4*5))

%Exercicio 1(c)
625^0.25

%Exercicio 1.3 (1)
format long
3/7
format long e
3/7
format short
3/7

%Exercicio 1.3(2)
%Significa o expoñente ao que está elevado o 10

%Exercicio 1.3 (3)
format long
4/7
format long e
4/7
format short
4/7

%Exercicio 1.5(1)

sin(pi/6)
cos(pi/6)
tan(pi/6)
cot(pi/6)
sec(pi/6)
csc(pi/6)

%Exercicio 1.5 (2)

log10(64)/log10(4)
log(4)
log(64)

%Exercicio 1.7
v = [3 6 2 7 1 5];
v(3)
v([2, 4])
zeros(1, 5)
linspace(2, 10, 3)

%Exercicio 1.8
5:3:18
1/2:7/2
3:-1.5:-4.5
linspace(3, -4.5, 6)
2:2:6

%Exercicio 1.9
w=v.^2
w=v.*v

4*atan(1)

%Comando plot
figure
x = [1 2 3 -4 5]; y = [6 -1 7 9 -2];
plot(x, y, 'r:h')
title('Esto es una gráfica')
xlabel('Eje x')
ylabel('Eje y')
text(0,9, 'Esto es un texto')
grid on

x = 0:pi/100:3*pi; y = cos(x); z = cos(3*x);
plot(x, y, x, z)
legend('f(x)=cos(x)', 'g(x)=cos(3x)')

%Ejercicio 1.10 Incluye un comentario a la derecha de cada una de las
%siguientes órdenes que explique lo que hace cada una.
figure
x = 0:pi/100:2*pi;
y = sin(x);
hold on
plot(x, y)
z = cos(x);
plot(x, z, 'g-.')
hold off

%Crear circunferencia
t = 0:pi/180:2*pi; x = cos(t); y = sin(t); plot(x,y)
axis equal
axis tight

%Función definida a trozos
x = linspace(-2, 3, 1000);
y = (1-2*x).*(x <= -1)+((x + 1).^3 + 2*x).*(x > -1);
plot(x, y, '.');
title('funcion definida a trozos')

%Control de entrada y salida
a=34;
disp('Este texto se muestra en pantalla')
disp(['La variable a vale ',num2str(a)])
error('Error en el código. Estás haciendo algo mal')
a=input('Usuario: Dame el valor de a')

fprintf('cantidad: %5.2f ', 5.6789)




%SYMBOLIC

pkg load symbolic
syms x % define la variable simbolica x
f = 3*x + 5 % ahora hemos definido la expresion simbolica f
n=sym(2/5)
n_numerico=2/5
double(n)
x=sym('x')
syms x
format long
double(sym('2/7'))
a=sym('2/7')
vpa(a,5)
vpa(a,25) %Non fiarse máis aló de 32 díxitos (Octave atora)
syms a b c % define como simbolicas las variables a, b, c.
expresion = a^3 + b^2 + c
findsym(expresion)
syms x; solve(3*x + 15 == 0, x)

%Ejercicio 1.13
syms a b c x; solve(a*x^2 + b*x + c == 0, x)
%Se obtiene la solución de esa ecuación
syms a b c x; solve(a*x^2 + b*x + c == 0, a)
%Lo mismo, pero la incógnita es a
syms x y; [x, y] = solve(2*x + 5*y == 0, x + y == 3)
y = (x^2 - 1)/(2*(x + 4)^3); numden(y)
[num, den] = numden(y)
factor(y)
expand(den)
z=(x^2 - 1)/(x^2 + 2*x + 1); simplify(z)
%Cómo funciona ezplot
syms x; y = x^2 + sin(3*x) - 1/2;
ezplot(y, [-10, 10])
