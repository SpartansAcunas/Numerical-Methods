%Bisecci�n
function[vecX,vecE,iter]=Biseccion(f,a,b,tolMax,iterMax)
syms f(x);
f(x)=input('Ingrese la funci�n a trabajar: ');
a=input('Ingrese el limite inferior: ');
b=input('Ingrese el limite superior: ');
tolMax= input('Digite la precisi�n a utilizar en el m�todo: ');
iterMax=input('Ingrese el n�mero m�ximo de iteraciones: ');
iter=1;  %Este valor me indica la cantidad de iteraciones necesarias al final del programa
vecX=[];
vecX(1)=(a+b)/2; %Defino la posici�n 1 del vector de valores Xn
vecE=[];
vecE(1)=(b-a)/2; %Defino la posicion 1 del vector de valores del error.
error=(b-a)/2;
Xn=(a+b)/2;
indice=2; %Empiezo en 2 porque ya defini la posici�n 1 de los vectores
while (error>tolMax && iterMax>=iter)
    %el error debe ser menor a la tolerancia para aproximar el resultado, y
    %el las iteraciones de iter no pueden sobrepasar el n�mero m�ximo de
    %iteraciones iterMax
    fa=subs(f,'x',a);
    fb=subs(f,'x',b);
    fxn=subs(f,'x',Xn);
    if fa*fxn<0
        b=Xn;
    else
        a=Xn;
        
    end
    Xn=(a+b)/2;
    error=(b-a)/2;
    vecX(indice)=Xn;
    vecE(indice)=error;
    iter=iter+1;
    indice=indice+1;
end
disp('Los valores de Xn son: ')
display(vecX)
disp('Los errores son :')
disp(vecE)
disp('El n�mero de iteraciones necesarias es de: ')
disp(iter)
end
    
