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
         (disk d4)
         (disk d5)
         (disk d6)
         (disk d7)
         (disk d8)
         (disk d9)
         (disk d10)
         (disk d11)
         (disk d12)
         (on d1 d2)
         (on d2 d3)
         (on d3 d4)
         (on d4 d5)
         (on d5 d6)
         (on d6 d7)
         (on d7 d8)
         (on d8 d9)
         (on d9 d10)
         (on d10 d11)
         (on d11 d12)
         (on d12 p1)
        )
        
        ; Problem with 3 disk
        ;((move-stack (d3 d2 d1) d4 p2 p3))
        
        ; Problem with 6 disks
        ;((move-stack (d6 d5 d4 d3 d2 d1) d7 p2 p3))
        
        ; Problem with 10 disks
        ((move-stack (d10 d9 d8 d7 d6 d5 d4 d3 d2 d1) d11 p2 p3))
        
        ; Problem with 12 disks
        ;((move-stack (d12 d11 d10 d9 d8 d7 d6 d5 d4 d3 d2 d1) p1 p2 p3))
        
        )


;;-------------------------------
;;;(make-problem-set 'setX '(
;;;              bw_ran_100_1
;;;))

;;(do-problems 'setX :verbose :stats)
