;;;; raft-persist-files.asd

(asdf:defsystem #:raft-persist-files
  :description "Defines the interface needed for the RAFT package
to store its persistent state."
  :author "Patrick Stein <pat@nklein.com>"
  :version "0.1.20190927"
  :license "UNLICENSE"
  :depends-on (#:raft-persist)
  :in-order-to ((asdf:test-op (asdf:load-op :raft-persist-files-test)))
  :perform (asdf:test-op (o c)
             (uiop:symbol-call :raft-persist-files-test :run-all-tests))
  :components
  ((:static-file "README.md")
   (:module "src"
    :components (
                 (:file "package")
                 (:file "backup-utils" :depends-on ("package"))
                 (:file "creation" :depends-on ("package"))
                 (:file "state" :depends-on ("package"
                                             "creation"
                                             "backup-utils"))
                 (:file "log-entry" :depends-on ("package"
                                                 "creation"
                                                 "backup-utils"))
                 (:file "clear" :depends-on ("package"
                                             "creation"
                                             "state"
                                             "log-entry"
                                             "backup-utils"))))))
