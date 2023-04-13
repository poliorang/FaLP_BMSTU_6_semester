(defun mult1 (lst x)
	(cond
		((null lst) nil)
		(t (cons (* (car lst) x)(mult1 (cdr lst) x)))
	)
)

(print (mult1 '(0 1 2 -3 4/4) 2))
(write-line "")


(defun mult2 (lst x)
	(cond
		((null lst) nil)
		((numberp (car lst))(cons (* (car lst) x)(mult2 (cdr lst) x)))
		(t (cons (car lst)(mult2 (cdr lst) x)))
	)
)

(print (mult2 '(0 1 (2 . 2) -3 1/4 abc "abc" (1 (2 . 3))) 2))
(write-line "")