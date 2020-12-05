
m=[-10:1/200:10];
y0=0*m;
plot(y0,m,'g');%EJE Y
plot(m,y0,'g');%EJE X


%ASINTOTA HORIZONTAL
a=limit(f(x),x,inf);
y0=0*m + double(a);
plot(m,y0,'r -.');



%ASINTOTAS VERTICALES
[num,den]=numden(f);
av=solve(den==0);%DONDE SE ANULA EL DENOMINADOR
y0=0*m + double(av(1));%RECTA DE ASINTOTA EN -2
plot(y0,m,'r -.');
y0=0*m + double(av(2));%RECTA DE ASINTOTA EN 2
plot(y0,m,'r -.');