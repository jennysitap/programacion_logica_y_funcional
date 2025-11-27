%Examen Unidad #3 y #4: Historia de los lenguajes de programación
%Instrucciones: De acuerdo al diagrama adjunto realizar lo siguiente:  
%Definir los hechos de los lenguajes derivados de JOSS siguiendo el orden de las flechas
papa(joss,isis).
papa(joss,pili).
papa(joss,filecomp).
papa(joss,focal).
papa(focal,coke).
papa(joss,citran).
papa(joss,telecomp).
papa(telecomp,mumps).
papa(telecomp,logo).
papa(focal,cal).
papa(cal,superbasic).

%¿Quién es el padre del padre de coke? El papa del papa de coke es joss  
padre_del_padre(Descendiente, Abuelo) :-
    papa(Padre, Descendiente),
    papa(Abuelo, Padre).

padre_del_padre(coke,X).

%¿Es Logo hermano de MUMPS? True, si son hermanos logo y mumps 
hermanos(A,B) :-
    papa(P, A),
    papa(P, B),
    A \= B.

hermanos(logo,mumps).

%¿Es JOSS el padre del padre de SuperBasic? True, joss es el padre del padre de superbasic 
es_padre_del_padre(Padre, Nieto) :-
    papa(Padre, X),
    papa(X, Nieto).

es_padre_del_padre(joss,superbasic).

%Descendientes directos de joss: Descend = isis, pili, filecomp, focal, citran y telecomp
descendientes_directos_joss(T, Descend) :-
    papa(T, Descend).

descendientes_directos_joss(joss, Descend).

%Calcular la edad de un lenguaje con su año de creación: 
a(joss,1963).
a(focal,1968).
a(coke,1970).
a(superbasic,1979).

edad(Lenguaje, Edad) :-
    a(Lenguaje, A),
    Edad is 2025 - A.

edad(joss,E). %La edad de joss es 62
edad(focal,E). %La edad de focal es 57
edad(coke,E). %La edad de coke es 55
edad(superbasic,E). %La edad de superbasic es 46
 
%Determina si un lenguaje es más antiguo que otro.
es_mas_antiguo(A, B) :-
    a(A, X),
    a(B, Y),
    X < Y.

es_mas_antiguo(joss,focal). %True, joss es mas antiguo que focal