%Método Newton-Raphson
function [vecX,vecE,iter]=NewtonRaphson(f,x0,tolMax,iterMax)
syms f(x);
f(x)=input('Ingrese la función a trabajar en términos de x: ');
x0=input('Ingrese el punto inicial: '); %Este es el punto con el que se comienza a trabajar
tolMax= input('Digite la precisión a utilizar en el método: ');
iterMax=input('Ingrese el número máximo de iteraciones: '); %Limita las iteraciones que el programa realizará
derfx=diff(f,'x',1);
n=0; %n representa el orden 
iter=1;  %Este valor me indica la cantidad de iteraciones necesarias al final del programa
vecX=[];  %Este es el vector que contendrá las aproximaciones a la solución de la ecuación
vecE=[];  %Este es el vector que contiene los errores de las aproximaciones
indice=2; %Empiezo en 2 porque ya defini la posición 1 de los vectores
fx0=subs(f,'x',x0); %Evalua el punto inicial en la función original
derfx0=subs(derfx,'x',x0); %Evalua el punto inicial en la derivada de la función
x1=x0-(fx0/derfx0);   %Este es el valor que sigue al inicial.
resta=x1-x0;  %resta es una variable que almacena la resta.
error=abs(resta);
vecE(1)=error;   %Defino el primer elemento del vector
vecX(1)=x1;      %Defino el primer elemento del vector
while (error>tolMax && iterMax>=iter)
    %el error debe ser menor a la tolerancia para aproximar el resultado, y
    %el las iteraciones de iter no pueden sobrepasar el número máximo de
    %iteraciones iterMax
    %A partir de este while, se empieza la segunda iteración
    x0=x1;
    fx0=subs(f,'x',x0); %Evalua el punto inicial en la función original
    derfx0=subs(derfx,'x',x0); %Evalua el punto inicial en la derivada de la función
    x1=x0-(fx0/derfx0);   %Son los valores nuevos que se calculan con el anterior
    error=abs(x1-x0);   %Este es el nuevo error
    vecX(indice)=x1;    %Aqui se coloca el elemento n del vector
    vecE(indice)=error; %Aqui se coloca el elemento n del vector
    iter=iter+1;
    indice=indice+1;
end
disp('Las aproximaciones a la solución son: ')
disp(vecX)
disp('Los erroes de las aproximaciones son: ')
disp(vecE)
disp('La cantidad de interaciones es de: ')
disp(iter)
end
    
    