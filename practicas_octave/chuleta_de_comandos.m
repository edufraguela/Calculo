
%%%%%%%%%%%%%%%%%%%%%%%%%% BASICO %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Carga de paquete simbolico

pkg load symbolic
syms x


% Comandos de axuda

doc, help, letras y tabulador para ver que comandos tienen esas letras


% Comandos útiles

Usamos ; al final para realizar una operación pero no mostrarla

% Comandos de limpeza

clc, home, clear all, clear %variable


% Formatos

format short, format rat, format long, format long e


% Operacions

+, -, *, /, ^,


% Funcions

sqrt(n), nthroot(x,n), exp(n), abs(n), log(n),
log10(n), log2(n), sin(n), cos(n), tan(n), factor(n),
factorial(n)

% Aproximar valor a unha fraccion

fraccion = rats(2.5)


% Partes enteiras e redondeo

fix(1.5), floor(1.5), round(1.5)

% Vector de ceros

vector_ceros = zeros(1,5)


% Mostrar elementos dun vector

vector = [1 2 3 4 5];   %en fila%
vector = [1; 2; 3; 4; 5];  %en columna%
vector = [1 2 3 4 5]';    %en columna%
vector(2)
vector([1,3])
vector([1:3])
zeros(a,b)
a:b:c
a:b


% Crear vector con saltos

vector1 = linspace(1,10,5)  %  5 numeros do 1 ao 10
vector2 = [1:2:10]    % Desde o 1 ata o 10 sumando 2


% Lonxitude dun vector

longitud_vector = length(vector)



% Operacions con vectores


v = vector.^5
v = vector(5).*5
v = v./vector
v = vector + [1 2 3 4 5]
v = vector + 5

suma = suma(vector)
producto = prod(vector)
maximo = max(vector)
minimo = min(vector)


% Arquivo de funcion (co nome funcion)

pkg load symbolic
syms x

function y = funcion(x)   % Chamar a funcion utilizando funcion(1)
  y = cos(4*x) + sin(2*x)
endfunction


% Constantes simbolicas

pi = sym('pi')
e = sym('E')

% Constante simbolica a valor numerico

alpha = sym('pi')
beta = double(alpha)

vpa(1/3,5)    % Aproximacion con polo menos 5 decimais


% Operar con expresions simbolicas


funcion = x^2 + 5;

findsym(funcion)    % Mostra a variable simbolica da funcion

solve(funcion == 0, x)    % Raices da funcion
[x,y] = solve(2*x + y == 0, x + y == 3)   % Sistema de ecuacions

subs(funcion,x,0)   % Resolve a funcion para x = 0
    % Exemplo con varias variables
      syms a b
      funcion = a*x^2 + 5*b*x;
      subs(funcion,{a,b},{1,2})   % Substitue as variables a e b por 1 e 2


% Textos

disp('Este texto se muestra en pantalla')
disp('   ')   % Lina en blanco

a = 5;
disp (['El resultado es', num2str(a)])%Mostra texto cun numero cambiado a cadena

error('Error')

fprintf('El resultado es %8.3f', a)
fprintf('\n')   % Salto de lina

variable = input('Introduzca un numero : ')
cadena = input('Introduzca su nombre : ','s')
opcion = menu('MENU','Introducir nombre','Introducir edad')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% GRAFICAS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pkg load symbolic
syms x


% Graficar poligonal que une varios puntos (x,y)

x = [1 3 5];
y = [2 1 4];

plot(x,y)


% Dotar de informacion a grafica

title('Titulo grafica')
xlabel('Eje de abscisas')
ylabel('Eje de ordenadas')
text(1,2, 'Este es el punto (1,2)')
legend('texto linea')

axis equal  % Misma escala en ambos eixos
vector_ejes = axis    % Formados polos valores minimos e maximos de cada eixo
axis([1 10 1 10])   % Modifica os valores minimos e maximos de cada eixo

grid on, grid off    % Cuadricula

plot(x,y,'cp--')


% Graficas con varias funcions

x = 0:1:10;
y = sin(x);
z = atan(x);

plot(x,y)
hold on
plot(x,z, 'g.-')
hold off


% Graficas en distintas ventanas

plot(x,y)
figure(2)
plot(x,z)

% Varias graficas na mesma ventana

funcion = x;
vector = [1:5];

subplot(2,1,1)
grafica1 = ezplot(funcion, [vector(1), vector(5)]);
subplot(2,1,2)
grafica2 = ezplot(funcion, [vector(1), vector(5)]);


% Graficar funcion a trozos

x = linspace(-2,3,1000);
y = (1 - 2*x).*(x <= -1) + ((x+1).^3 + 2*x).*(x > -1);
plot(x,y,'y.')


% Graficar con variables simbolicas

funcion = 2x^2 + 3;
grafica = ezplot(funcion,[-10,10]) % Grafica a funcion no intervalo [-10,10]
hold on
set(grafica,'color','m','linestyle','.-');


%%%%%%%%%%%%%%%%%%%%%%%%%%%% LAGRANGE, MATRICES %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pkg load symbolic
syms x


% Diferencia entre cada elemento dun vector e o seu seguinte

vector = [2, 3, 1, -1, 1/2];
diff(vector)


% LAGRANGE

anos = [2011 2013 2014];
SM = [2945 -1128 -94];
anos1 = anos;

l0 = 1;
l1 = 1;
l2 = 1;

for k = 2:3
  l0 = l0*(x-anos(k));
  l0 = l0/(anos(1)-anos(k));
endfor

for k = 1:2:3
  l1 = l1*(x-anos(k));
  l1 = l1/(anos(2)-anos(k));
endfor

for k = 1:2
  l2 = l2*(x-anos(k));
  l2 = l2/(anos(3)-anos(k));
endfor

% polinomio de grado 2

P2 = SM(1)*l0 + SM(2)*l1 + SM(3)*l2

subs(P2, x, 2012)
subs(P2, x, 2011)
subs(P2, x, 2013)
subs(P2, x, 2014)

% Calculo polinomio interpolador con diferencias divididas

syms x;

anos = [ 2005 2006 2007 2009 2010];
SM = [ 6915 7644 9396 3849 3679];

dif_x = diff(anos);
dif_y = diff(SM);
dif_1 = dif_y./dif_x
dif_2_y = diff(dif_1);
m = length(dif_2_y);
dif_2 = zeros(m, 1);

for k = 1:m
  dif_2(k) = dif_2_y(k)/(anos(k+2)-anos(k));
endfor

dif_2

dif_3_y = diff(dif_2);

m = length(dif_3_y);
dif_3 = zeros(m, 1);

for k = 1:m
  dif_3(k) = dif_3_y(k)/(anos(k+3)-anos(k));
endfor

dif_3

dif_4_y = diff(dif_3);
m = length(dif_4_y);
dif_4 = zeros(m, 1);

for k = 1:m
  dif_4(k) = dif_4_y(k)/(anos(k+4)-anos(k));
endfor

dif_4

P5 = SM(1)+dif_1(1)*(x-anos(1))...
+dif_2(1)*(x-anos(1))*(x-anos(2))...
+dif_3(1)*(x-anos(1))*(x-anos(2))*(x-anos(3))...
+dif_4(1)*(x-anos(1))*(x-anos(2))*(x-anos(3))*(x-anos(4))

subs(P5, x, 2008)
subs(P5, x, 2005)
subs(P5, x, 2006)
subs(P5, x, 2007)
subs(P5, x, 2009)

subplot(2,1,1)
gr1 = ezplot(P2, [anos1(1), anos1(end)]);
subplot(2,1,2)
gr2 = ezplot(P5, [anos(1), anos(end)]);

% MATRICES

Matriz_2x2 = [1 2; 3 4]
Elemento_M22 = M(2,2)  % Elemento segunda fila segunda columna 
Elementos_fila = M(1,:)  % Todos os elementos da primeira fila
Elementos_matriz = M(1:2,:)  % Mostra os elementos que estan da
 %fila 1 a fila 2 e en todas as columnas



% Matriz de elementos aleatorios entre 0 e 1

Matriz = rand(5) % 5x5
Matriz = rand(2,4) % 2x4


% Tamaño dunha matriz


Matriz = [1 2 3 4; 4 5 6 7];  % 2x4
[m,n] = size(Matriz)  % Mostra o numero de filas e columnas da matriz


% Matriz de uns o de ceros


Matriz_unos = ones(3,2)
Matriz_ceros = zeros(3)


% Dicotomia

f = x^3-x-1;
a = 1.3;
b = 1.4;
a1 = a;
b1 = b;
alpha = solve(f==0,x);
alpha = alpha(1);
alpha = double(alpha);

pause(3)
format long
for k = 1:fix(log2((b-a)*10^5))+1
  xk = 0.5*(a1+b1);
  fprintf('xk =  %5.4f\n', xk)
  
%  fprintf('fa1 =  %6.4f\n', subs(f,x,a1))
%  fprintf('fxk =  %6.4f\n', subs(f,x,xk))
  if (double(subs(f,x,a1))*double(subs(f,x,xk))<0) 
%    a1 = a1;
    b1 = xk;
    
  else
    a1 = xk;
  endif
fprintf('a1 =  %5.4f\n', a1)
fprintf('b1 =  %5.4f\n', b1)
endfor

fprintf('El error es %8.6f', alpha-xk)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DERIVADAS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pkg load symbolic
syms x

f = x*exp(x);


% Derivada da funcion f

derivada = diff(f,x)


% Derivada de orden n da funcion f

n = 3;

derivada_orden_n = diff(f,x,n)


% Extremos relativos da funcion f

extremos_relativos = solve(derivada==0,x)

    % Se f''(x0) > 0 maximos relativo
    % Se f''(x0) < 0 minimo relativo 


% Posibles extremos absolutos

a = 0;
b = 2;

posibles_extremos_absolutos = [double(extremos_relativos),a,b];

n = length(posibles_extremos_absolutos);

extremo_evaluado = zeros(1,n);

for k = 1:n
valor_extremo = subs(f,x,posibles_extremos_absolutos(k))
fprintf('El valor de f en el extremo relativo %8.2d es %8.2f \n', 
         posibles_extremos_absolutos(k), double(valor_extremo));
endfor


% Crecemento da funcion f en cada intervalo


derivada = diff(f,x);
raices = solve(der==0,x);
crecimiento = subs(der,x,%aqui ponse a raiz)

% Posibles puntos de inflexión da funcion f, concava ou convexa?

derivada_segunda = diff(f,x,2);
posible_punto_inflexion = solve(derivada_segunda==0,x)
derivada_tercera = diff(f,x,3)

evaluada = subs(derivada_tercera,x,posible_punto_inflexion(2));

if (double(evaluada)!=0)
  fprintf('punto de inflexion de f es %8.3f', double(posible_punto_inflexion(2)))
endif

 % Si f''>0 enton f' e convexa en [0,posible_punto_inflexion] e crecente
 % Si f''<0 enton f' e concava en [0,posible_punto_inflexion] e decrecente

figure(2)
ezplot(derivada_segunda,[0,100]) 
figure(3)
ezplot(derivada_segunda,[0,double(posible_punto_inflexion(2))])

% Polinomio de Taylor de orden 2

polinomio_taylor_orden_3 = taylor(f,x,'order',3)


% Limite dunha funcion nun punto


limite = limit(f,x,0)


% Limites laterais

limite_derecha = limit(f,x,0,'right')
limite_izquierda = limit(f,x,0,'left')


% Asintotas horizontais

asintota_horizontal = limit(f,x,inf) % Comprobamos os limites laterais. 
                                     %Todos tenen que dar o mesmo valor finito
asintota_horizontal = limit(f,x,inf, 'left')
asintota_horizontal = limit(f,x,inf, 'right')

% Asintotas verticais


asintota_vertical = limit(f,x,1) % Comprobamos os limites laterais.
                                 %Todos tenen que dar infinito
asintota_vertical = limit(f,x,1, 'left')
asintota_vertical = limit(f,x,1, 'right')

%Asintotas oblicuas. Recordar y = mx + n so hai cando non existen asintotas
%horizontais e o grado do numerador e un maior que o do denominador


m = limit(f/x,x,inf);
n = limit(f-m*x,x,inf);

asintota_oblicua = m*x + n


% Recta tanxente


ezplot(x,f);
hold on

x0 = 2;
f0 = diff(f,x);
fx = subs(f,x,x0);
m = subs(f0,x,x0);

tangente = m * (x - x0) + fx
ezplot(x,tangente)




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% INTEGRALES %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%            

pkg load symbolic
syms x

f = x^3 + 2*x;

% Primitiva da funcion f

primitiva = int(f,x)

% Integral de f definida nun intervalo [a,b]

a = 0;
b = 2;

integral_definida = int(f,x,a,b)

% Integral impropia de f

a = -inf;
b = inf;

integral_impropia = int(f,x,a,b)

% Aproximar integral definida de f nun intervalo [a,b] polo método 
% del punto medio

a = 0;
b = 2;

punto_medio = (a + b) / 2;
integral_punto_medio = subs(f,x,punto_medio) * (b - a)

%Aproximar integral definida de f nun intervalo [a,b] polo método do
%trapecio composto

for n = 1:5
  nodos = linspace(a,b,10^n);
  funcion_evaluada = nodos.^3 + 2.*nodos;
  integral_trapecio_compuesto = trapz(nodos,funcion_evaluada)
endfor

