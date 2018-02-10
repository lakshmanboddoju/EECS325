(in-package :ddr-tests)


(defparameter *member-kb*
  '(
    (member ?x (cons ?x ?z))
    (<- (member ?x (cons ?y ?z))
        (member ?x ?z))))
