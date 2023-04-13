(write-line "1. Напишите функцию, которая уменьшает на 10 все числа из списка-аргумента ")
(write-line "этой функции, проходя по верхнему уровню списковых ячеек. ")
(write-line "( * Список смешанный структурированный)")

(defun substract(lst)
    (mapcar #'(lambda (elem) 
                      (if (numberp elem) 
                          (- elem 10)
                          elem
                      )
              ) 
            lst
    )
)

(print (substract (list 1 2 3 4 5)))
(print (substract (list (list 1 2) 3 (list 4 5))))
(print (substract (list 1 2 (list (list (list 3))) 4 5)))
(write-line "")

(write-line "")
(write-line "2. Написать функцию которая получает как аргумент список чисел, а возвращает ")
(write-line "список квадратов этих чисел в том же порядке.")

(defun square(lst)
    (mapcar #'(lambda (x) 
                      (* x x)
              ) 
            lst
    )
)

(print (square (list 0 0 0 0 0)))
(print (square (list 1 2 3 4 5)))
(print (square '()))
(write-line "")

(write-line "")
(write-line "3. Напишите функцию, которая умножает на заданное число-аргумент ")
(write-line "все числа из заданного списка-аргумента, когда ")
(write-line "")
(write-line "a) все элементы списка - числа,")

(defun mult1 (array koef)
    (mapcar #'(lambda (elem) (* elem koef)) 
            array
    )
)

(print (mult1 '(1 2 3) 1))
(print (mult1 '(1 2 3 4 5) 5))
(print (mult1 '(1 2 3 4 5) -1))
(print (mult1 '(1 2 3 4 5) 0))
(print (mult1 '(1 2 3 4 5) -5))
(write-line "")

(write-line "")
(write-line "б) элементы списка - любые объекты.")

(defun mult2 (array koef)
    (mapcar #'(lambda (elem) 
                      (if (numberp elem) 
                          (* elem koef) 
                          elem
                      )
              ) 
            array
    )
)

(print (mult2 '(1 2 3) 1))
(print (mult2 '(1 2 3 4 5) 5))
(print (mult2 '(1 2 3 4 5) -1))
(print (mult2 '(1 2 3 4 5) 0))
(print (mult2 '(1 2 3 4 5) -5))
(print (mult2 '(1 'a 3) 1))
(print (mult2 '('a 'b 'c 'd 'e) 5))
(print (mult2 '('g 2 3 4 5) -1))
(write-line "")

(write-line "")
(write-line "4. Написать функцию, которая по своему списку-аргументу lst определяет ")
(write-line "является ли он палиндромом (то есть равны ли lst и (reverse lst)), ")
(write-line "для одноуровнего смешанного списка.")

(defun is_palindrom (lst)
    (equal lst (reverse lst))
)

(print (is_palindrom '(1 3 2)))
(print (is_palindrom '(1)))
(print (is_palindrom '(5 3 1 3 5)))

(print (is_palindrom '(1 3 2)))
(print (is_palindrom '(1)))
(print (is_palindrom '(())))
(print (is_palindrom '(5 3 1 3 5)))
(print (is_palindrom '('a 'b 'a)))
(write-line "")


(write-line "")
(write-line "5. Используя функционалы, написать предикат set-equal, который ")
(write-line "возвращает t, если два его множества-аргумента (одноуровневые списки) ")
(write-line "содержат одни и те же элементы, порядок которых не имеет значения.")

(defun set-equal(lst1 lst2)
    (and (subsetp lst1 lst2) 
         (subsetp lst2 lst1)
    )
)

(print (set-equal '(1 2 3 4 5) '(1 2 3 4 5)))
(print (set-equal '(1 2 3 4 5) '(1 3 4 2 5)))
(print (set-equal '(1 2 3 4 5) '(1 1 1 1 1)))
(print (set-equal '(5 5 5 5 5) '(1 3 4 2 5)))
(print (set-equal '(5 4 3 2 1) '(1 2 3 4 5)))
(write-line "")

(write-line "")
(write-line "6. Напишите функцию, select-between, которая из списка-аргумента, ")
(write-line "содержащего только числа, выбирает только те, которые расположены ")
(write-line "между двумя указанными числами - границами-аргументами и возвращает ")
(write-line "их в виде списка (упорядоченного по возрастанию (+ 2 балла)).")

(defun select-between (a b lst)
    (sort 
        (mapcan #'(lambda (x) 
                         (and (>= x a) (<= x b) (list x))
                ) 
                lst
        ) 
        #'<
    )
)

(print (select-between 1 1 (list 1 2 3 4 5)))
(print (select-between 1 3 (list 1 2 3 4 5)))
(print (select-between 5 5 (list 1 2 3 4 5)))
(print (select-between 6 6 (list 1 2 3 4 5)))
(print (select-between -1 10 (list 1 2 3 4 5)))
(write-line "")

(write-line "")
(write-line "7. Написать функцию, вычисляющую декартово произведение двух своих ")
(write-line "списков-аргументов. ( Напомним, что А х В это множество всевозможных ")
(write-line "пар (a b), где а принадлежит А, b принадлежит В.)")

(defun decart(lstX lstY)
    (mapcar #'(lambda (x) 
                      (mapcar #'(lambda (y) (list x y)) 
                              lstY
                      )
              ) 
            lstX
    )
)

(print (decart '(1 2 3) '(1 2 3)))
(print (decart '(1 2 3) '(2 3 1)))
(print (decart '(1 2 3) '(3 1 2)))
(print (decart '(1 2 3) '(3 2 1)))
(print (decart '('a 'b 'c) '('d 'e 'f)))
(write-line "")

(write-line "")
(write-line "8. Почему так реализовано reduce, в чем причина?")

(write-line "(reduce #'+ ()) -> 0")
(print (reduce #'+ ()))
(print (+))
(write-line "")

(write-line "(reduce #'* ()) -> 1")
(print (reduce #'* ()))
(print (*))
(write-line "")

(write-line "")
(write-line "9. * Пусть list-of-list список, состоящий из списков. Написать функцию, ")
(write-line "которая вычисляет сумму длин всех элементов list-of-list (количество атомов), ")
(write-line "т.е. например для аргумента ((1 2) (3 4)) -> 4")

(defun len(lst)
    (reduce #'(lambda (current elem) 
                      (+ current (length elem))
              ) 
              (cons 0 lst)
    )
)

(print (len (list (list 1) (list 2) (list 3))))
(print (len (list (list 1) (list 2) (list 3) (list 4) (list 5))))
(print (len (list (list 1 6) 
                  (list 2 7 8) 
                  (list 3 9 10 11) 
                  (list 4 12 13 14 15) 
                  (list 5 16 17 18 19 20)
            )
       )
)
(write-line "")
