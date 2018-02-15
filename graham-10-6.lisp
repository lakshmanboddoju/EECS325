(defmacro preserve (lst &body body)
  `(let ,(mapcar #'(lambda (x) `(,x ,x)) lst)
     ,@body))
