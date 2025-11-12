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

% 6. ruta(X): imprime la ruta taxonómica desde X hacia arriba
ruta(X) :-
    papa(Padre, X),
    write(Padre), nl,
    ruta(Padre).
ruta(_).

%Preguntas:
%1- Es el gorila descendiente de hominini?

%2- ¿Es el Homo hermano del gorila? False
hermano(homo, gorilla).
%3- ¿Son el Homo y el Gorilla de la misma subfamilia? True
misma_subfamilia(homo, gorilla).
%4- ¿Tiene Hominini la misma familia que Pongo? True
misma_familia(hominini,pongo).
%5- ¿Quiénes son los descendientes directos de una tribu?

%6- ¿Cuál es la superfamilia a la que pertenece Hylobates?

%7- ¿Qué géneros comparten la misma subfamilia con Pan?

%8- ¿Cuál es el ancestro común más cercano entre Homo y Gorilla?

%9- ¿Es el orangután un homínido? True
descendiente(orangutan, hominidea).
%10- ¿Cuáles son todas las especies que pertenecen a la familia Hominidae?

%11- ¿Qué géneros son hermanos taxonómicos de Homo? 
hermano(homo, X).
%12 -¿Comparten Homo y Hylobates la misma familia? False
misma_familia(homo, hylobates).
%13- ¿Cuáles son los descendientes directos de la subfamilia Homininae?

%14- ¿Qué géneros están bajo la familia Hominidae?

%15- ¿Cuál es la ruta taxonómica completa desde Homo hasta la superfamilia? hominini, homininae, hominidea, hominoidea
ruta(homo).