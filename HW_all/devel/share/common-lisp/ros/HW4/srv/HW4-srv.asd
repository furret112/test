
(cl:in-package :asdf)

(defsystem "HW4-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "First_srv" :depends-on ("_package_First_srv"))
    (:file "_package_First_srv" :depends-on ("_package"))
  ))