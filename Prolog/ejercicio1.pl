%Hechos
jefe(mark,sheryl).
jefe(mark,david).
jefe(mark,timothy).
jefe(mark,mike).
jefe(mark,elliot).
jefe(mark,lori).
jefe(elliot,rebecca).
jefe(elliot,heather).

%Preguntas:
%¿Quién es el jefe del Rebecca? Elliot
%jefe(X, rebecca).

%¿Es jefe Mark del jefe de Rebecca? Elliot
%jefe(mark, X), jefe(X, rebecca).

%¿Es Lori jefe de alguien? False
%jefe(lori, X).

%Mostrar empleados del jefe de Heather: Sale Rebecca
%jefe(Jefe,heather),jefe(Jefe,Empleado).

%¿Es Timothy jefe de Rebecca? False
%jefe(timothy, rebecca).

%Mostrar compañeros de nivel de Mike: Salen todos
%jefe(Jefe, mike), jefe(Jefe, Compañeros), Compañeros \= mike.

%¿Es el jefe de Rebecca compañero de nivel de David?
jefe(Jefe, rebecca), jefe(Jefejefe, Jefe), jefe(Jefejefe,david).

%¿Es compañero de nivel Mike de Lori? Mark, lo que confirma que estan en el mismo nivel
%jefe(Jefe,mike),jefe(Jefe,lori).