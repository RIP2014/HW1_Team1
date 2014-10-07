(in-package :shop2-user)
;;; This file contains a Tower of Hanoi domain representation for HTN algorithm
;;;
;;; CS7649: Robotics Intelligence Planning
;;; Group 1
;;; Homework 1 (Ques 5)
;;;
;;; Date: Oct 5, 2014 
;;;

;;; ------------------------------------------------------------------------
;;; Declare all the data
;;; ------------------------------------------------------------------------

(defun define-toh-domain ()
  (let (( *define-silently* nil))
    (defdomain (toh-normal :redefine-ok t)
       (
        ;; basic block-stacking operators
        
        (:operator (!move-disk ?disk ?belowDisk ?newBelowDisk)
                  ((clear ?disk) (clear ?newBelowDisk) (on ?disk ?belowDisk))
                  ((on ?disk ?belowDisk) (clear ?newBelowDisk))
                  ((on ?disk ?newBelowDisk) (clear ?belowDisk)))
        (:method (move-stack (?bot . ?top) ?base ?temp ?dest)
                 ()
                 ((move-stack ?top ?bot ?dest ?temp)
                  (!move-disk ?bot ?base ?dest)
                  (move-stack ?top ?temp ?base ?bot)))
        (:method (move-stack nil ?base ?temp ?dest) () ())

        ;; state axioms
        (:- (same ?x ?x) nil)))))

(eval-when (:load-toplevel)
  (define-toh-domain))

