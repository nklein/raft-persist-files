;;; src/package.lisp

(defpackage #:raft-persist-files
  (:use #:raft-persist #:cl)
  ;; from creation
  (:export #:make-persist-files))
