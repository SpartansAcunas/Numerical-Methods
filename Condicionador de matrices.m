A=input(' Matriz :\n');% ingrese matriz,ejemplo [4 5; 6 3];
d=det(A);
n=norm(A);
R=d/n ;
if R>1
    fprintf("Una matriz estara condicionada si R el cual es division del determinante entre la norma de la matriz es < 1\nLa matriz no esta condicionada R=");
    disp(R);
else
    fprintf("Una matriz estara condicionada si R el cual es division del determinante entre la norma de la matriz es < 1\nLa matriz esta condicionada R=");
    disp(R);
end