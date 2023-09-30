;; Auto-generated. Do not edit!


(when (boundp 'talklisten::Num)
  (if (not (find-package "TALKLISTEN"))
    (make-package "TALKLISTEN"))
  (shadow 'Num (find-package "TALKLISTEN")))
(unless (find-package "TALKLISTEN::NUM")
  (make-package "TALKLISTEN::NUM"))

(in-package "ROS")
;;//! \htmlinclude Num.msg.html


(defclass talklisten::Num
  :super ros::object
  :slots (_num1 ))

(defmethod talklisten::Num
  (:init
   (&key
    ((:num1 __num1) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:serialization-length
   ()
   (+
    ;; int64 _num1
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _num1
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _num1 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _num1) (= (length (_num1 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_num1 . bv) 0) 0) s)
              (write-long (ash (elt (_num1 . bv) 1) -1) s))
             ((and (class _num1) (= (length (_num1 . bv)) 1)) ;; big1
              (write-long (elt (_num1 . bv) 0) s)
              (write-long (if (>= _num1 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _num1 s)(write-long (if (>= _num1 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _num1
#+(or :alpha :irix6 :x86_64)
      (setf _num1 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _num1 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get talklisten::Num :md5sum-) "6ed0120b0616d1b6c77186c64d8cb79d")
(setf (get talklisten::Num :datatype-) "talklisten/Num")
(setf (get talklisten::Num :definition-)
      "int64 num1

")



(provide :talklisten/Num "6ed0120b0616d1b6c77186c64d8cb79d")


