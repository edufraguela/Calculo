%Práctica 3: Derivadas
syms x
f = x^3 - 4*x^2
diff(f,x)      %derivada
diff(f,x,2)    %derivada segunda
%Exercicio. Hacha os puntos críticos e clasifícaos. Tamén os puntos de inflexión
syms x
f(x)= x^3- 4*x^2
d1f(x)=diff(f(x),x,1)
x0= solve(d1f(x)==0,x)
x0(1)
x0(2)
d2f(x)=diff(f(x),x,2)
d2f(x0(1))
d2f(x0(2))
xinflexion = solve(d2f(x)==0,x)
ezplot(f(x),[-4,4])





%Exercicio 1
syms t
v(t) = 0.001302*t^3 - 0.09029*t^2 + 23.61*t - 3.083
a(t) = diff(v(t), t, 1)
d1a(t) = diff(a(t), t, 1)
x0 = solve(d1a(t)==0, t)
d2a(t) = diff(a(t), t, 2)
d2a(x0)
%Como ao substituír na segunda derivada o punto no cal a primeira derivada se 
% anula é positivo, a función da aceleración presenta un mínimo relativo en x0
a(0)
a(126)
a(x0)
%Como o maior deses tres números é a(126) e o menor a(x0) o mínimo absoluto da
%aceleración no intervalo dado alcánzase en t=x0 e o máximo absoluto en t=126





%Exercicio 2
syms q
U(q) = -100000 + 60000*q + 985*q^2 - (1/3)*q^3
%Os posibles máximos relativos son os máximos relativos e os extremos 
%do intervalo
d1U(q) = diff(U(q), q, 1)
x0 = solve(d1U(q)==0, q)
x0(1)
x(2)
d2U(q) = diff(U(q), q, 2)
d2U(x0(1))
d2U(x0(2))
%d2U(x0(1)) é un mínimo e d2U(x0(2)) un máximo relativo
U(x0(2))
U(0)
U(3000)
%Como o maior deses tres valores é U(x0(2)), ese punto tamén é o máximo absoluto
%da función, e por tanto a utilidade mensual é máxima en q=x0(2)=2000 unidades





%Exercicio 3
syms p
I(p) = 25*p - (p^2/2)
%Os posibles máximos relativos son os máximos relativos e os extremos 
%do intervalo
d1I(p) = diff (I(p), p, 1)
x0 = solve(d1I(p)==0, p)
d2I(p) = diff (I(p), p, 2)
d2I(x0)
%Deu negativo, polo que x0 é un máximo da función I(p)
I(0)
I(20)
I(x0)
%Se o corte non pode ter un prezo maior de 20 euros os máximos ingresos 
%obeteríaos ao cobrar 20 euros por corte, se non ten límite de prezo por corte
%obtería máximos ingresos en p=x0=25





%Exercicio 4
syms x
f(x)= (200 - x)*(3*x + 300)
%Os posibles máximos relativos son os máximos relativos e os extremos 
%do intervalo
d1f(x) = diff (f(x), x, 1)
x0 = solve(d1f(x)==0, x)
d2f(x) = diff(f(x), x, 2)
d2f(x0)
%Deu negativo, polo que x0 é un máximo da función f(x)