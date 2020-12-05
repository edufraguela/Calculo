% Metodo de dicotomia

% Definicion da funcion
f=@(x) x.*exp((3-x)/3)-0.25;

% Extremos do intervalo onde se busca a solución
a=0; % extremo esquerdo
b=5; % extremo dereito

% Erro máximo que se desexa acadar
eps=2/60;

% Inicializacion de variables
aa=a;
bb=b;
err=1;
Iter=0;

% Bucle da busqueda do metodo de dicotomia
while (err >= eps)
    % Calculo do novo iterante
    x0=(a+b)/2;
    Iter=Iter +1;
    if f(a)*f(x0)<0
        b=x0;
        err=abs(a-x0);
    else
        a=x0;
        err=abs(b-x0);
    end
    % Impresion por pantalla dos resultados
    fprintf('Iteracion=%2.4e; ',Iter);
    fprintf('Raiz aprox. x0=%2.4e; ',x0);
    fprintf('f(x0)=%2.4e; ',f(x0));
    fprintf('Erro absoluto=%2.4e \n',err);
end

% Representación grafica
figure
x=linspace(aa,bb,1000);
plot(x,f(x));
hold on
plot(x0,f(x0),'ro');
xlabel('x'),ylabel('f(x)');
title(['Iteracion=',num2str(Iter),'; Raiz=',num2str(x0)]);
hold off
grid on
