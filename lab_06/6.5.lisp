;; одноуровневый смешанный
(defun f1 (lst result)
	(cond
		((null lst) result)
		((numberp (car lst)) (f1 (cdr lst) (+ result(car lst))))
		(t (f1 (cdr lst) result))
	)
)

(defun rec-add1 (lst) 
	(f1 lst 0)
)

(print '(1 1 1 1 1 1))
(print (rec-add1 '(1 1 1 1 1 1)))
(write-line "")

(print '(1 (2 . 3) (1 2 3 4) "abc" abc (1 (2 (3 4)))))
(print (rec-add1 '(1 (2 . 3) (1 2 3 4) "abc" abc (1 (2 (3 4))))))
(write-line "")


;; структурный
(defun f2 (lst result)
	(cond
		((null lst) result)
		((numberp (car lst)) (f2 (cdr lst) (+ result (car lst))))
		((atom (car lst)) (f2 (cdr lst) result))
		(t (f2 (cdr lst) (f2 (car lst) result)))
	)
)

(defun rec-add2 (lst) 
	(f2 lst 0)
)

(print '(1 1 1 1 1 1))
(print (rec-add2 '(1 1 1 1 1 1)))
(write-line "")

(print '(1 (1 1 1) "abc" (1 (1 (1 1))) abc))
(print (rec-add2 '(1 (1 1 1) "abc" (1 (1 (1 1))) abc)))
(write-line "")