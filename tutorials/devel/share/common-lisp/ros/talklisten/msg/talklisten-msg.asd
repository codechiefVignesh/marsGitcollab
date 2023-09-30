
(cl:in-package :asdf)

(defsystem "talklisten-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Num" :depends-on ("_package_Num"))
    (:file "_package_Num" :depends-on ("_package"))
    (:file "Num" :depends-on ("_package_Num"))
    (:file "_package_Num" :depends-on ("_package"))
    (:file "posi" :depends-on ("_package_posi"))
    (:file "_package_posi" :depends-on ("_package"))
    (:file "posi" :depends-on ("_package_posi"))
    (:file "_package_posi" :depends-on ("_package"))
  ))