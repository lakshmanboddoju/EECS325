(defmacro nth-expr (n &rest expr)
  `(case ,n
     ,@(loop for x in expr
           for n from 1
           collect `((,n) ,x))))


(defmacro n-of (n expr)
  (let ((num (gensym)) (i (gensym)) (lst (gensym)))
    `(do ((,num ,n) 
          (,i 0 (1+ ,i))
          (,lst nil (cons ,expr ,lst)))
         ((= ,i ,num) (nreverse ,lst)))))
