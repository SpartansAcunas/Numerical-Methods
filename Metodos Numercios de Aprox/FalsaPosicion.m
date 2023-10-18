%Método Falsa Posición
function[vecX,vecE,iter]=FalsaPosicion(f,a,b,tolMax,iterMax)
syms f(x);
f(x)=input('Ingrese la función a trabajar: ');
a=input('Ingrese el limite inferior: ');
b=input('Ingrese el limite superior: ');
tolMax= input('Digite la precisión a utilizar en el método: ');
iterMax=input('Ingrese el número máximo de iteraciones: ');
iter=1;  %Este valor me indica la cantidad de iteraciones necesarias al final del programa
vecX=[];    %Defino un vector vacio para las aproximaciones
vecE=[];    %Defino un vector vacío para los errores de aproximación
error=1;    %Este error no es de ninguna aproximación, nsimplemente es para que se cumpla la condición para entrar al while
indice=2;   %Inicia en 2 porque antes del while se trabaja con los elementos 1 de los vectores
fa=subs(f,'x',a);
fb=subs(f,'x',b);
Xn=b-((fb*(a-b))/(fa-fb));
fxn=subs(f,'x',Xn);
vecX(1)=Xn;     %Defino el valor del primer elemento del vector de aproximaciones.
vecE(1)=nan;    %nan significa not a number
if fa*fxn<0
   b=Xn;       
else
   a=Xn;
end
while (error>tolMax && iterMax>=iter)
    %el error debe ser menor a la tolerancia para aproximar el resultado, y
    %el las iteraciones de iter no pueden sobrepasar el número máximo de
    %iteraciones iterMax 
    fa=subs(f,'x',a);
    fb=subs(f,'x',b);
    Xn=b-((fb*(a-b))/(fa-fb));
    fxn=subs(f,'x',Xn);
    vecX(indice)=Xn;
    if fa*fxn<0
        b=Xn;
    else
        a=Xn;
    end
    error=abs(vecX(indice)-vecX(indice-1));
    vecE(indice)=error;
    iter=iter+1;
    indice=indice+1;
end
disp('Los valores de Xn son: ')
disp(vecX)
disp('Los errores son :')
disp(vecE)
disp('El número de iteraciones necesarias es de: ')
disp(iter)
end
    
    
