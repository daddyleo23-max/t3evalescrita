%------------------------------------------------------------------------------------------------------------------
%Ejercicio 1 articulo sobre programación logica
%Preguntas
%1.-Quienes son mortales?
%2.-Que mujeres son cientificas?
%3.-Quienes son pensadores?
%4.-Socrates es sabio?
%5.-Que humanos son antiguos?
%6.-Hay alguien que ame a maria?
%7.-Quienes son pensadores(filosofos o cientificos)?
%8.-Que filosofo es igual a platon usando unificación?

% Hechos
humano(socrates).
humano(platon).
humano(aristoteles).
humano(pierre_Curie).
mujer(maria).
mujer(marie_Curie).
cientifico(marie_Curie).
cientifico(pierre_Curie).
filosofo(socrates).
filosofo(platon).
filosofo(aristoteles).
sabio(socrates).
antiguo(socrates).
antiguo(platon).
antiguo(aristoteles).
ama(juan, maria).
ama(pedro, maria).

% Reglas
mortal(X) :- humano(X).  % Todos los humanos son mortales
pensador(X) :- filosofo(X).  % Filósofos son pensadores
pensador(X) :- cientifico(X).  % Científicos también son pensadores

% filosofo(X), X = platon.



%-----------------------------------------------------------------------------------------------------------------------
%Ejercicio 2 Contestar las siguientes consultas Hanoi, Generar el HECHOS
% Torres de Hanoi (Parte 2)
hanoi(N) :- mover(N, poste1, poste3, poste2).

mover(0, _, _, _).
mover(N, A, B, C) :-
    N > 0,
    M is N - 1,
    mover(M, A, C, B),
    escribir_mov(A, B),
    mover(M, C, B, A).

escribir_mov(Desde, Hasta) :-
    write('mover desde: '), write(Desde),
    write(' hasta: '), write(Hasta), nl.


%ruta: ['C:/Users/herna/OneDrive/Documents/8vo Semestre/Programación_Logica_y_Funcional/3er_Parcial/Prolog/t3evalescrita'].