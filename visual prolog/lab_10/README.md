## На защите (Ю.В.):  
Написать функцию вычисления чисел Фибоначчи и факториала в две стороны на `SWI-Prolog`  

```SWI-Prolog
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
```

_Например:_  
_fac(5, X). -> 120_    
_fac(X, 120). -> 5_  
_fib(7, X). -> 13_  
_fib(X, 13). -> 7_  


### Загадки  

- Что будет?  
_* вводит 2 #= X + 9_  
- 7...  
_* запускает, на экране 7_  
- А теперь что будет?  
_* вводит 2.5 #= X + 9.0_  
- 6.5...  
_* запускает, все вдапает в бесконечный цикл_  

Потому что есть модуль `:- use_module(library(clpfd)).` для работы с целыми числами, но нет модуля для работы с вещественными, его до сих пор делают.  
