;; Auto-generated. Do not edit!


(when (boundp 'talklisten::posi)
  (if (not (find-package "TALKLISTEN"))
    (make-package "TALKLISTEN"))
  (shadow 'posi (find-package "TALKLISTEN")))
(unless (find-package "TALKLISTEN::POSI")
  (make-package "TALKLISTEN::POSI"))

(in-package "ROS")
;;//! \htmlinclude posi.msg.html


(defclass talklisten::posi
  :super ros::object
  :slots (_ch ))

(defmethod talklisten::posi
  (:init
   (&key
    ((:ch __ch) 0)
    )
   (send-super :init)
   (setq _ch (round __ch))
   self)
  (:ch
   (&optional __ch)
   (if __ch (setq _ch __ch)) _ch)
  (:serialization-length
   ()
   (+
    ;; char _ch
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; char _ch
       (write-byte _ch s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; char _ch
     (setq _ch (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get talklisten::posi :md5sum-) "dd7240a84f4873bbc50cced87558e8eb")
(setf (get talklisten::posi :datatype-) "talklisten/posi")
(setf (get talklisten::posi :definition-)
      "char ch

")



(provide :talklisten/posi "dd7240a84f4873bbc50cced87558e8eb")


