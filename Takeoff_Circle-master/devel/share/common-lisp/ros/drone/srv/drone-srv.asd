
(cl:in-package :asdf)

(defsystem "drone-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Sender" :depends-on ("_package_Sender"))
    (:file "_package_Sender" :depends-on ("_package"))
  ))