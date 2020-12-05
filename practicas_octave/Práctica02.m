%Practica 2
%Exercicio1
syms x
%a
f(x)=((x^2)-9)/((x^2)-4)  
[num, den]=numden(f(x))
[d]= solve (den==0, x)
%Por ser f unha funcion cociente o seu dominio son todos os numeros reais 
%que non fan 0 o denominador, e dicir, todo R salvo -2 e 2

%Os puntos de corte co eixo OX achanse igualando a expresion a 0, polo que 
%f corta ao eixo OX nos puntos (-3,0) e (3,0)
f(0)
%O punto de corte co eixo OY achase substituindo as variables da expresion por
%0, polo que f corta ao eixo OY no punto (0, 2.25)

ezplot (f(x), [-10, 10])
hold on
axis([-10 10 -3 6])
x0=0;
plot([x0, x0], [-10, 10], 'g')
y0=0;
plot ([-10, 10], [y0, y0], 'g')

%b
limit(f(x), x, +inf) %AH
limit(f(x), x, -inf) %AH (a mesma que a de arriba)
plot([-10, 10], [1, 1], 'r') %Pintar a asíntota horizontal
limit(f(x), x, -2)          %AV1
plot([-3, 6], [-2, -2], 'r')%AV1
limit(f(x), x, 2)           %Av2
plot([-3, 6], [2, 2], 'r')  %AV2
%Non ten asíntota oblicua por ter asíntota horizontal





%Exercicio2  (Non acabado)
%a O limite de v'(t) cando t tende a infinito e alpha, porque o outro sumando
   %anulase por ser un dos factores v(t) (o limite cando t tende a infinito de 
   %v(t) e cero)
%b  
%c
%d 
 v(t)= 4*e^(e^(-0.1*t))
 ezplot (v(t), [0, 10]) %Como se pode apreciar na gráfica, o volume do tumor
                        %irase reducindo co paso do tempo

                        
                        
                        
                        

%Exercicio3
  %Facer unha chamada ao ficheiro dicotomia.m cos seguintes valores para as 
  %variables: f(x)= x.*e.^((3-x)/3)-0.25; a=0; b=5; eps=2/60; O resultado é
  %ao cabo de 0.097656 horas, que son 5 minutos e 51 segundos

