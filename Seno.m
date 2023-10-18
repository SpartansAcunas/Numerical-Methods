prompt = 'ingrese el maximo exponente ';
n = input(prompt)
prompt = 'ingrese el valor de x ';
x = input(prompt)
signo=1
sx=x
vr=sin(x)
a=3
for a = n-2;
    c=1
    f=1
    while c<a
        f=f*c
        c=c+1
    end
    if mod(signo,2)==1;
        sx=sx-((x^a)/f)
    else
        sx=sx-((x^a)/f)
    end
    signo=signo+1
end
er=vr-sx
et=(er/vr)*100
fprintf('El seno de %d es %d',x,sx);
fprintf('El error relativo de este valor es %d',et);