%Pr�ctica 4: Integrais
%Exercicio 4.1
%a
syms x
f(x)= x* log(x)
int(f(x), x)
%b
f(x)= atan(x)
int(f(x), x)
%c
syms u
f(u)= u^2/sqrt(u^3+1)
int(f(u), u)
%d
f(x)= (x^2 + x^(-1/3))^2
int(f(x), x, 1, 2)
%e
f(x)= sqrt(9-x^2)
int(f(x), x, -3, 3)


%Exercicio 4.2
%a
f(x)= log(x)/x^2
int(f(x), x, 1, +inf)

f(m)=int(f(x), x, 1, m)
limit(f(m), m, +inf)
%b
f(t)= 1/(1+t^2)
int(f(t), t, -inf, +inf)
f(a)= int(1/(1+t^2), t, a, 0)
f(b)= int(1/(1+t^2), t, 0, b)
-limit(f(a), a, -inf) + limit (f(b), b, +inf)
%c
f(x)= 1/sqrt(-x)
g(x)= 1/sqrt(x)
int(f(x), x, -4, 0) + int(g(x), x, 0, 9)


%Exercicio 4.3: Regra do punto medio composta
f(x)= sqrt(cos(x))
 n=6
 h=(pi/2+pi/2)/6
 xvec= (-pi/2+h/2) : h : (pi/2-h/2)
 yvec= double(f(xvec))
 midp(xvec, yvec)

