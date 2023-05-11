:- use_module(library(dif)).
:- use_module(library(clpfd)).
:- use_module(library(clpb)).
:- use_module(library(chr)).
:- use_module(library(when)).

fac(N, X) :- fac(N, X, 1).
fac(1, X, X) :- !.
fac(N, X, Acc) :- N #> 0,
        N1 #= N - 1,
        Acc1 #= N * Acc, 
        Acc #=< X,
        fac(N1, X, Acc1).

fib(N, X) :- fib1(N, X, 0, 1).
fib1(1, X, _, X) :- !.
fib1(N, X, F1, F2) :- N #> 1,
        F #= F1 + F2, 
        N1 #= N - 1,
     fib1(N1, X, F2, F).