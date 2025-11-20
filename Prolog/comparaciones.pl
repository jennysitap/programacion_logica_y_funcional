%Comparar el área de un círculo.
%comparar_area(10,12,Resultado). Da como resultado Mayor
%comparar_area(0,12,Resultado). Da como resultado Menor
%comparar_area(10,314.1592653589793,Resultado). Da como resultado Igual
area_circulo(Radio, Area):- Area is pi * Radio ** 2.

comparar_area(Radio, Limite, Resultado):-
    area_circulo(Radio, Area),
    (Area > Limite -> Resultado = 'Mayor';
    Area =:= Limite -> Resultado = 'Igual';
    Resultado = 'Menor' 
    ).

%Comparar perímetro de un cuadrado
%comparar_perimetro(5,18,R). Da como resultado Mayor
%comparar_perimetro(1,18,R). Da como resultado Menor
%comparar_perimetro(5,20,R). Da como resultado Igual
perimetro_cuadrado(Lado, Perimetro) :- 
    Perimetro is 4 * Lado.

comparar_perimetro(Lado, Limite, Resultado) :-
    perimetro_cuadrado(Lado, P),
    (P > Limite -> Resultado = 'Mayor';
     P =:= Limite -> Resultado = 'Igual';
     Resultado = 'Menor').

%Verificar si el número es positivo, negativo o Cero
%verificar_numero(-3, R). Da como resultado Negativo
%verificar_numero(0, R). Da como resultado Cero
%verificar_numero(7, R). Da como resultado Positivo
verificar_numero(Num, Resultado) :-
    (Num > 0 -> Resultado = 'Positivo';
     Num < 0 -> Resultado = 'Negativo';
     Resultado = 'Cero').

%Comparar la raíz cuadrada con un valor
%comparar_raiz(25, 4, R). Da como resultado Mayor porque la raiz de 25 es mayor que 4
%comparar_raiz(25, 5, R). Da como resultado Igual porque la raiz de 25 es igual que 5
%comparar_raiz(25, 6, R). Da como resultado Menor porque la raiz de 25 es menor que 6
comparar_raiz(Num, Limite, Resultado) :-
    Raiz is sqrt(Num),
    (Raiz > Limite -> Resultado = 'Mayor';
     Raiz =:= Limite -> Resultado = 'Igual';
     Resultado = 'Menor').

%Calcular el área de un triángulo y verificar si es mayor que 50
%area_triangulo_mayor50(10, 12, R). Da como resultado Mayor
%area_triangulo_mayor50(5, 10, R). Da como resultado Menor
%area_triangulo_mayor50(10, 10, R). Da como resultado Igual
area_triangulo(Base, Altura, Area) :-
    Area is (Base * Altura) / 2.

area_triangulo_mayor50(Base, Altura, Resultado) :-
    area_triangulo(Base, Altura, Area),
    (Area > 50 -> Resultado = 'Mayor';
     Area =:= 50 -> Resultado = 'Igual';
     Resultado = 'Menor').

%Verificar si el número es par o impar
%par_o_impar(8,R). Da como resultado Par
%par_o_impar(13,R). Da como resultado Impar
par_o_impar(Num, Resultado) :-
    (Num mod 2 =:= 0 -> Resultado = 'Par';
     Resultado = 'Impar').

%Comparar el logaritmo natural
%comparar_ln(20, 2, R). Da como resultado Mayor
%comparar_ln(1, 1, R). Da como resultado Menor
%comparar_ln(7.38905609893065, 2, R). Da como resultado Igual
comparar_ln(Num, Limite, Resultado) :-
    Ln is log(Num),
    (Ln > Limite -> Resultado = 'Mayor';
     Ln =:= Limite -> Resultado = 'Igual';
     Resultado = 'Menor').

%Calcular la potencia y verificar si supera 100
%comparar_potencia(10,10,R). Da como resultado Mayor
%comparar_potencia(1,10,R). Da como resultado Menor
%comparar_potencia(10,2,R). Da como resultado Igual
comparar_potencia(Base, Exponente, Resultado) :-
    Potencia is Base ** Exponente,
    (Potencia > 100 -> Resultado = 'Mayor';
     Potencia =:= 100 -> Resultado = 'Igual';
     Resultado = 'Menor').
