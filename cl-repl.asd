(defsystem cl-repl
  :version "0.5.1"
  :author "TANI Kojiro"
  :license "GPLv3"
  :depends-on (#:alexandria
               #:uiop
               #:unix-opts
               #:split-sequence
               #:trivial-backtrace
               #:cl-ppcre
               #:cl-readline)
  :serial t
  :components ((:module "src" :components ((:file "package")
                                           (:file "color")
                                           (:file "color-scheme")
                                           (:file "highlight")
                                           (:file "keymap")
                                           (:file "pager")
                                           (:file "command")
                                           (:file "shell")
                                           (:file "completer")
                                           (:file "debugger")
                                           (:file "input")
                                           (:file "repl")
                                           (:file "main"))))
  :build-operation "program-op"
  :build-pathname "cl-repl"
  :entry-point "cl-repl:main"
  :description "A full-featured repl implementation."
  :long-description "A full-featured repl implementation.")
