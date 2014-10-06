(in-package :shop2-user)
;; name: problem.lisp
;; #blocks: 100
;; seed:1022262828
;;---------------------------------------------
;;problem_name: bw_ran_100_1    towers: 11

(defproblem toh_3 'toh-normal
        ;'((arm-empty)
        (
         (clear p2)
         (clear p3)
         (clear d1)
         (disk d1)
         (disk d2)
         (disk d3)
         (on d1 d2)
         (on d2 d3)
         (on d3 p1)
        )
        
        ;((!moveDisk d1 d2 p2))
        ((move-stack (d3 d2 d1) p1 p2 p3))
        ;((moveStack (d1) d2 p2 p3))
        ;((move-stack nil d1 p2 p3))
        
        )


;;-------------------------------
;;;(make-problem-set 'setX '(
;;;              bw_ran_100_1
;;;))

;;(do-problems 'setX :verbose :stats)
