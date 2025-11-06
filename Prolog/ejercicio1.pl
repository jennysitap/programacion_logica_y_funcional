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

%Mostrar empleados del jefe de Heather


%¿Es Timothy jefe de Rebecca? False
%jefe(timothy, rebecca).

%Mostrar compañeros de nivel de Mike


%¿Es el jefe de Rebeca compañero de nivel de David?


%¿Es compañero de nivel Mike de Lori?