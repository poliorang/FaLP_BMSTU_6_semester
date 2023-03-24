(defun f (lst)
	(cond 
		((atom lst) lst)
		((atom (car lst)) (f (cdr lst)))
		(t (car lst))
	)
)	

(print '(1))
(print (f'(1)))
(write-line "")

(print '(1 2 3))
(print (f'(1 2 3)))
(write-line "")

(print '(1 (2 3)))
(print (f'(1 (2 3))))
(write-line "")

(print '(1 (2 . 3)))
(print (f'(1 (2 . 3))))
(write-line "")

(print '(1 (2 . 3) (4 5)))
(print (f'(1 (2 . 3) (4 5))))
(write-line "")