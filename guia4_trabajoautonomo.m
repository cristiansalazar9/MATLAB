load census;
x=pop;%valores dependiente, edad variable independiente 
edad = 1:length(x);% devuelve la longitud de la dimension mas grande empezando desde la fila uno
polinomio1=polyfit(edad,x,1);%ajuste polinomial grado 1
p1=polyval(polinomio1,edad);%se hace el uso de polyval para evaluar el ajuste hecho en las diferentes edades
figure
plot(edad,x,'o',edad,p1)
xlabel('Edad');
ylabel('Población');
title('ajuste polinomial 1');
grid on
polinomio2=polyfit(edad,x,2);
figure
p2=polyval(polinomio2,edad);
plot(edad,x,'o',edad,p2)
xlabel('Edad');
ylabel('Población');
title('ajuste polinomial 2');
grid on 
polinomio3=polyfit(edad,x,3);
figure
p3=polyval(polinomio3,edad);
plot(edad,x,'o',edad,p3)
xlabel('Edad');
ylabel('Población');
title('ajuste polinomial 3');
grid on 
%Calcula el error cuadrático medio para cada ajuste polinomial realizado
error1= x-p1;
error2 = x-p2;
error3=x-p3;
error_1=error1.^2;
error_2=error2.^2;
error_3=error3.^2;
error_cuadratico1= mean(error_1)%la función mean para calcular el promedio 
error_cuadratico2=mean(error_2)
error_cuadratico3=mean(error_3)