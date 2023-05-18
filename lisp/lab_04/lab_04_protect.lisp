(defun rev1 (lst)
    (when lst
          (append (rev1 (rest lst))
                  (list (first lst))
          )
    )
)

(print (rev1 (list 1 2 3)))
(write-line "")



(defun cat (lst1 lst2)
    (cond
        ((null lst1) lst2)
        ((atom (cdr lst1)) (cons (car lst1) lst2))
        (T (cons (car lst1) (cat (cdr lst1) lst2)))
    )
)

(defun rev2 (lst)
    (cond
        ((null lst) NIL)
        (T (cat (rev2 (cdr lst)) (list (car lst))))
    )
)

(print (rev2 (list 1 2 3)))
(write-line "")



(defun rev3 (list)
    (let ((result '()))
         (dolist (e list result)
                 (push e result)
         )
    )
)

(print (rev3 (list 1 2 3)))
(write-line "")

