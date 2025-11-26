%hechos
%redes
red(red1).
red(red2).
%topologia
topologia(red1, estrella).
topologia(red2, bus).
%velocidad
velocidad(red1, 1000).
velocidad(red2, 100).
%dispositivos
pertenece(pc1, red1).
pertenece(pc2, red1).
pertenece(pc3, red1).
pertenece(pc4, red1).
pertenece(pc5, red2).
pertenece(pc6, red2).
pertenece(pc7, red2).
pertenece(s1, red2).

%si un dispositivo es de una red
es_de_red(Dispositivo, Red) :-
   pertenece(Dispositivo, Red).

%si los dispositivos pueden hacer ping
puede_hacer_ping(A, B) :-
   pertenece(A, Red),
   pertenece(B, Red),
   A \= B.

%regla inventada (si una red es cableada rapida > 500 mbs)
red_rapida(Red) :-
   velocidad(Red, Vel),
   Vel > 500.

%contar cuantas compus hay en una red
cantidad_pcs(Red, Cantidad) :-
   findall(PC, (pertenece(PC, Red), sub_atom(PC, 0, _, _, 'pc')), Lista),
   length(Lista, Cantidad).

%regla con comparador
mas_rapida(R1, R2) :-
   velocidad(R1, V1),
   velocidad(R2, V2),
   V1 > V2.

%consultas
%mostrar las compus de la red 1 (topología de estrella): pc1, pc2, pc3 y pc4
pertenece(PC, red1).
%mostrar las compus de la red 2: pc5, pc6 y pc7
pertenece(PC, red2).

%comprobar si pc6 pertenece a red 2: true
es_de_red(pc6, red2).
%comprobar si pc1 pertenece a red 2: false
es_de_red(pc1, red2).

%puede S1 enviar ping a PC2? true
puede_hacer_ping(s1, pc2).
%puede S1 enviar ping a PC6? true
puede_hacer_ping(s1, pc6).

%red rápida red 1: true
red_rapida(red1).
%red rápida red 2: false porque es menor de los 500 mbs
red_rapida(red2).

%contar compus en red 2: 3
cantidad_pcs(red2, C).

%comparar velocidades: true ya que la red 1 es de 1000 mbs y la otra es de 100 mbs
mas_rapida(red1, red2).
%comparar velocidades: false ya que la red 2 es de 100 mbs y la otra es de 1000 mbs
mas_rapida(red2, red1).