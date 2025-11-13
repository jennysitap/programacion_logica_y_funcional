%Hechos
papa(hominoidea,hominidea). 
papa(hominoidea,hylobatidae). 
papa(hominidea,homininae). 
papa(homininae,gorillini). 
papa(homininae,hominini). 
papa(hominini,homo). 
papa(homo,human). 
papa(hominini,pan). 
papa(pan,bonobo). 
papa(pan,chimpanzee). 
papa(gorillini,gorilla). 
papa(gorilla,gorilla2). 
papa(hominidea,ponginae). 
papa(ponginae,pongo). 
papa(pongo,orangutan). 
papa(hylobatidae,hylobates). 
papa(hylobates,gibbon).

%Generaciones
generacion(hominoidea,  superfamily).
generacion(hominidea,hylobatidae ,family).
generacion(homininae,ponginae, subfamily).
generacion(hominini,gorillini, tribe).
generacion(homo,pan,gorilla,pongo,hylobates, genus).

%Reglas
% 1. descendiente(X, Y): X es descendiente (directo o indirecto) de Y
descendiente(X, Y) :- papa(Y, X).
descendiente(X, Y) :- papa(Z, X), descendiente(Z, Y).

% 2. hermano(X, Y): X y Y tienen el mismo padre
hermano(X, Y) :-
    papa(Z, X),
    papa(Z, Y),
    X \= Y.

% 3. misma_subfamilia(X, Y): X e Y pertenecen a la misma subfamilia
misma_subfamilia(X, Y) :-
    descendiente(X, Sub),
    descendiente(Y, Sub),
    member(Sub, [homininae, ponginae, hylobatidae]),
    X \= Y.

% 4. misma_familia(X, Y): X e Y pertenecen a la misma familia (hominidea)
misma_familia(X, Y) :-
    descendiente(X, hominidea),
    descendiente(Y, hominidea).

% 5. ancestro_comun(X, Y, Ancestro): ancestro común más cercano entre X e Y
ancestro_comun(X, Y, Ancestro) :-
    descendiente(X, Ancestro),
    descendiente(Y, Ancestro),
    \+ (descendiente(X, Otro), descendiente(Y, Otro), papa(Otro, Ancestro)).

% 6.generos bajo familia
bajo_familia(P,Generos) :-
    setof(G, ( descendiente(G,P), (papa(_,P); generacion(P, genus))),Generos).

% 7. descendientes directos
descendientes_directos(X, Y) :-
    papa(X, Y).

% 8. ruta(X): imprime la ruta taxonómica desde X hacia arriba
ruta(X) :-
    papa(Padre, X),
    write(Padre), nl,
    ruta(Padre).
ruta(_).

% 8. descendientes directos de tribu
descendientes_directos_detribu(T, Descend) :-
    papa(T, Descend).

% 9. superfamilia
superfamilia(X, Superfam) :-
    descendiente(X, Superfam),
    generacion(S, superfamily).

%10. genera_misma_subfamilia
generar_misma_subfamilia(Gen, Otro) :-
    papa(Tribu1, Gen),
    papa(Sub, Tribu1),
    papa(Tribu2, Otro),
    papa(Sub, Tribu2),
    Otro \= Gen.

%Preguntas:
%1- Es el gorila descendiente de hominini? false
descendiente(gorilla, hominini).
%2- ¿Es el Homo hermano del gorila? false
hermano(homo, gorilla).
%3- ¿Son el Homo y el Gorilla de la misma subfamilia? true
misma_subfamilia(homo, gorilla).
%4- ¿Tiene Hominini la misma familia que Pongo? true
misma_familia(hominini,pongo).
%5- ¿Quiénes son los descendientes directos de una tribu? gorilla
descendientes_directos_detribu(gorillini, Descend).
%6- ¿Cuál es la superfamilia a la que pertenece Hylobates? hylobatidae
superfamilia(hylobates, Superfam).
%7- ¿Qué géneros comparten la misma subfamilia con Pan? homo y gorilla
generar_misma_subfamilia(pan, X).
%8- ¿Cuál es el ancestro común más cercano entre Homo y Gorilla? hominoidea
ancestro_comun(homo, gorilla, Ancestro).
%9- ¿Es el orangután un homínido? true
descendiente(orangutan, hominidea).
%10- ¿Cuáles son todas las especies que pertenecen a la familia Hominidae? homininae, ponginae, gorillini, hominini,
%homo, human, pan, bonobo, chimpanzee, gorilla, gorilla2, pongo y orangutan
descendiente(X,hominidea).
%11- ¿Qué géneros son hermanos taxonómicos de Homo? 
hermano(homo, X).
%12 -¿Comparten Homo y Hylobates la misma familia? false
misma_familia(homo, hylobates).
%13- ¿Cuáles son los descendientes directos de la subfamilia Homininae? gorillini y hominini
descendientes_directos(homininae, Y).
%14- ¿Qué géneros están bajo la familia Hominidae? bonobo, chimpanzee, gorilla, gorilla2, gorillini, homininae, hominini, homo, human
bajo_familia(hominidea,Generos).
%15- ¿Cuál es la ruta taxonómica completa desde Homo hasta la superfamilia? hominini, homininae, hominidea, hominoidea
ruta(homo).