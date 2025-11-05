valioso(oro).
valioso(plata).
le_gusta(juan,maria).
tiene(juan,libro).
tiene(maria,libro).

%Diagrama
progenitor(clara,jose).
progenitor(tomas,jose).
progenitor(tomas,isabel).
progenitor(jose,ana).
progenitor(jose,patricia).
progenitor(patricia,jaime).

%progenitor(X,ana),progenitor(Y,X),progenitor(Y,Z).
% ¿Es ana tia de jaime? Tiene que salir true
%%progenitor(X, ana), progenitor(X, patricia), progenitor(patricia, jaime), true.X = jose.

% ¿Es ana tia de isabel? Tiene que salir false
%progenitor(X,ana),progenitor(X,isabel).

