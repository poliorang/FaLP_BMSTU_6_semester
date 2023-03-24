На защиту дают список. Надо записать его в виде списковых ячеек и реализовать только с помощью cons

__Пример__  
((1 . 2) (3 NIL 4) 5 (6 NIL 7) 8 (9 A . B))   

```lisp
    (cons 
        (cons 1 2) 
        (cons 
            (cons 3 
                (cons 
                    () 
                    (cons 4 Nil)
                )
            ) 
        (cons 5 
            (cons 
                (cons 6 
                    (cons 
                        () 
                        (cons 7 Nil)
                    )
                ) 
            (cons 8 
                (cons 
                    (cons 9 
                        (cons 'a 'b)
                    ) 
                Nil)
            ))  
        ))
    )
```

