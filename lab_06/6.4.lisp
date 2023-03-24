(defun f (lst result a b)
	(cond
		((null lst) result)
		((and (> (car lst) a) (< (car lst) b)) (f (cdr lst)(cons (car lst) result) a b))
		(t (f (cdr lst) result a b))
	)
)

(defun select-between(lst a b)
	(f lst () a b)
)

(print '((0 1 2 3 4 5 6) [1 4]))
(print (select-between'(0 1 2 3 4 5 6) 1 4))
(write-line "")

(print '((0 1 2 3 4 5 6) [8 9]))
(print (select-between'(0 1 2 3 4 5 6) 8 9))
(write-line "")

(print '((0 8 3 6 4 5 2 7) [3 7]))
(print (select-between'(0 8 3 6 4 5 2 7) 3 7))
(write-line "")