(defun move-to (lst result)
	(cond 
		((null lst) result)
		(t (move-to (cdr lst) (cons (car lst) result)))
	)
)

(defun my-reverse (lst)
	(move-to lst ())
)

(print (my-reverse '(1 2 (3 4 (5 6))(7 . 8))))
(write-line "")