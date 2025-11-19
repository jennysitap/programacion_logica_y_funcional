%Operadores en prolog

%suma
ejemplo_suma(X,Y,R):-R is X + Y.
resultado: ejemplo_suma(10,2,R).

%resta
ejemplo_resta(X,Y,R):-R is X - Y.
resultado: ejemplo_resta(8,1,R).

%multiplicacion
ejemplo_multiplicacion(X,Y,R):-R is X * Y.
resultado: ejemplo_multiplicacion(8,2,R).

%division real
ejemplo_divr(X,Y,R):-R is X/Y.
resultado: ejemplo_divr(8,3,R).

%division entera
ejemplo_dive(X,Y,R):-R is X div Y.
resultado: ejemplo_dive(8,3,R).

%resto de la division
ejemplo_resdiv(X,Y,R):-R is X mod Y.
resultado: ejemplo_resdiv(8,3,R).

%x elevado a y
ejemplo_xey(X,Y,R):-R is X ^ Y.
resultado: ejemplo_xey(2,2,R).

%negacion
ejemplo_neg(X,R):-R is -X.
resultado: ejemplo_neg(2,R).

%valor absoluto
ejemplo_abs(X,R):-R is abs(X).
resultado: ejemplo_abs(-2,R).

%arco coseno 
ejemplo_acos(X,R):-R is acos(X).
resultado: ejemplo_acos(0.3,R).

%arco seno
ejemplo_asin(X,R):-R is asin(X).
resultado: ejemplo_asin(0.2,R).

%arco tangente 
ejemplo_atan(X,R):-R is atan(X).
resultado: ejemplo_atan(0.6,R).

%coseno
ejemplo_cos(X,R):-R is cos(X).
resultado: ejemplo_cos(2,R).

%exponencial
ejemplo_expo(X,R):-R is exp(X).
resultado: ejemplo_expo(2,R).

%logaritmo neperiano
ejemplo_ln(X,R):-R is log(X)/log(2).
resultado: ejemplo_ln(10,R).

%logaritmo base 2
ejemplo_log(X,R):-R is log(X).
resultado: ejemplo_log(10,R).

%seno
ejemplo_sin(X,R):-R is sin(X).
resultado: ejemplo_sin(1,R).

%raiz cuadrada
ejemplo_sqrt(X,R):-R is sqrt(X).
resultado: ejemplo_sqrt(20,R).

%tangente
ejemplo_tan(X,R):-R is tan(X).
resultado: ejemplo_tan(6,R).

%redondeo con n decimales
ejemplo_redondeo(X,R):-R is round(X).
resultado: ejemplo_redondeo(6,R).

%x es menor que y
ejemplo_xmeny(X,Y,R):- (X < Y -> R=true ; R=false).
resultado: ejemplo_xmeny(8,3,R).

%x es mayor que y 
ejemplo_xmay(X,Y,R):- (X > Y -> R=true ; R=false).
resultado: ejemplo_xmay(8,3,R).

%x es menor o igual que y
ejemplo_xmoi(X,Y,R):- (X =< Y -> R=true ; R=false).
resultado: ejemplo_xmoi(8,3,R).

%x es mayor o igual que y
ejemplo_xmayo(X,Y,R):- (X >= Y -> R=true ; R=false).
resultado: ejemplo_xmayo(8,3,R).

%x es igual que y
ejemplo_igual(X,Y,R):- (X = Y -> R=true ; R=false).
resultado: ejemplo_igual(3,3,R).

%x es distinto de y
ejemplo_distinto(X,Y,R):- (X \= Y -> R=true ; R=false).
resultado: ejemplo_distinto(3,3,R).

%la expresion x es igual que la expresion y 
ejemplo_expr(X,Y,R):- (X == Y -> R=true ; R=false).
resultado: ejemplo_expr(3,3,R).

%la expresion x es distinta que la expresion y
ejemplo_exprd(X,Y,R):- (X \== Y -> R=true ; R=false).
resultado: ejemplo_exprd(2,3,R).

%x es menor que y
ejemplo_xmenoy(X,Y,R):- (X @< Y -> R=true ; R=false).
resultado: ejemplo_xmenoy(8,3,R).

%x es mayor que y
ejemplo_xmayor(X,Y,R):- (X @> Y -> R=true ; R=false).
resultado: ejemplo_xmayor(8,3,R).

%x es menor o igual que y
ejemplo_xmeni(X,Y,R):- (X @=< Y -> R=true ; R=false).
resultado: ejemplo_xmeni(8,3,R).

%x es mayor o igual que y
ejemplo_xmi(X,Y,R):- (X @>= Y -> R=true ; R=false).
resultado: ejemplo_xmi(8,3,R).
