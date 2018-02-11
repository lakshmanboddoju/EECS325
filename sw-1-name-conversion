(defun camelize (str &optional capitalize)
  (let ((cap-str (string-capitalize str)))
    (cond
     ((eql capitalize t) (remove #\- cap-str))
     ((find #\- str) (remove #\- (nstring-downcase cap-str :end 1)))
     (t str))))

(defun hyphenate (camelCase &optional (case :upper))
  (if (eql case :upper)
      (string-upcase (hyphenate-helper camelCase))
    (string-downcase (hyphenate-helper camelCase))))
    

(defun hyphenate-helper (camelCase)
  (with-output-to-string (result)
    (format result "~a" (schar camelCase 0))
    (reduce (lambda (previous current)
              (if (and (lower-case-p previous) (upper-case-p current))
                  (format result "-"))
                (format result "~a" current)
              current)
            camelCase)))
