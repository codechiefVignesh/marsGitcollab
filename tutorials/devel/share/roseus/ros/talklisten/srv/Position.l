;; Auto-generated. Do not edit!


(when (boundp 'talklisten::Position)
  (if (not (find-package "TALKLISTEN"))
    (make-package "TALKLISTEN"))
  (shadow 'Position (find-package "TALKLISTEN")))
(unless (find-package "TALKLISTEN::POSITION")
  (make-package "TALKLISTEN::POSITION"))
(unless (find-package "TALKLISTEN::POSITIONREQUEST")
  (make-package "TALKLISTEN::POSITIONREQUEST"))
(unless (find-package "TALKLISTEN::POSITIONRESPONSE")
  (make-package "TALKLISTEN::POSITIONRESPONSE"))

(in-package "ROS")





(defclass talklisten::PositionRequest
  :super ros::object
  :slots (_posx _posy _ch ))

(defmethod talklisten::PositionRequest
  (:init
   (&key
    ((:posx __posx) 0)
    ((:posy __posy) 0)
    ((:ch __ch) 0)
    )
   (send-super :init)
   (setq _posx (round __posx))
   (setq _posy (round __posy))
   (setq _ch (round __ch))
   self)
  (:posx
   (&optional __posx)
   (if __posx (setq _posx __posx)) _posx)
  (:posy
   (&optional __posy)
   (if __posy (setq _posy __posy)) _posy)
  (:ch
   (&optional __ch)
   (if __ch (setq _ch __ch)) _ch)
  (:serialization-length
   ()
   (+
    ;; int64 _posx
    8
    ;; int64 _posy
    8
    ;; char _ch
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _posx
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _posx (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _posx) (= (length (_posx . bv)) 2)) ;; bignum
              (write-long (ash (elt (_posx . bv) 0) 0) s)
              (write-long (ash (elt (_posx . bv) 1) -1) s))
             ((and (class _posx) (= (length (_posx . bv)) 1)) ;; big1
              (write-long (elt (_posx . bv) 0) s)
              (write-long (if (>= _posx 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _posx s)(write-long (if (>= _posx 0) 0 #xffffffff) s)))
     ;; int64 _posy
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _posy (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _posy) (= (length (_posy . bv)) 2)) ;; bignum
              (write-long (ash (elt (_posy . bv) 0) 0) s)
              (write-long (ash (elt (_posy . bv) 1) -1) s))
             ((and (class _posy) (= (length (_posy . bv)) 1)) ;; big1
              (write-long (elt (_posy . bv) 0) s)
              (write-long (if (>= _posy 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _posy s)(write-long (if (>= _posy 0) 0 #xffffffff) s)))
     ;; char _ch
       (write-byte _ch s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _posx
#+(or :alpha :irix6 :x86_64)
      (setf _posx (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _posx (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _posy
#+(or :alpha :irix6 :x86_64)
      (setf _posy (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _posy (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; char _ch
     (setq _ch (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass talklisten::PositionResponse
  :super ros::object
  :slots (_posx _posy _chr _dir ))

(defmethod talklisten::PositionResponse
  (:init
   (&key
    ((:posx __posx) 0)
    ((:posy __posy) 0)
    ((:chr __chr) 0)
    ((:dir __dir) "")
    )
   (send-super :init)
   (setq _posx (round __posx))
   (setq _posy (round __posy))
   (setq _chr (round __chr))
   (setq _dir (string __dir))
   self)
  (:posx
   (&optional __posx)
   (if __posx (setq _posx __posx)) _posx)
  (:posy
   (&optional __posy)
   (if __posy (setq _posy __posy)) _posy)
  (:chr
   (&optional __chr)
   (if __chr (setq _chr __chr)) _chr)
  (:dir
   (&optional __dir)
   (if __dir (setq _dir __dir)) _dir)
  (:serialization-length
   ()
   (+
    ;; int64 _posx
    8
    ;; int64 _posy
    8
    ;; char _chr
    1
    ;; string _dir
    4 (length _dir)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _posx
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _posx (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _posx) (= (length (_posx . bv)) 2)) ;; bignum
              (write-long (ash (elt (_posx . bv) 0) 0) s)
              (write-long (ash (elt (_posx . bv) 1) -1) s))
             ((and (class _posx) (= (length (_posx . bv)) 1)) ;; big1
              (write-long (elt (_posx . bv) 0) s)
              (write-long (if (>= _posx 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _posx s)(write-long (if (>= _posx 0) 0 #xffffffff) s)))
     ;; int64 _posy
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _posy (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _posy) (= (length (_posy . bv)) 2)) ;; bignum
              (write-long (ash (elt (_posy . bv) 0) 0) s)
              (write-long (ash (elt (_posy . bv) 1) -1) s))
             ((and (class _posy) (= (length (_posy . bv)) 1)) ;; big1
              (write-long (elt (_posy . bv) 0) s)
              (write-long (if (>= _posy 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _posy s)(write-long (if (>= _posy 0) 0 #xffffffff) s)))
     ;; char _chr
       (write-byte _chr s)
     ;; string _dir
       (write-long (length _dir) s) (princ _dir s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _posx
#+(or :alpha :irix6 :x86_64)
      (setf _posx (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _posx (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _posy
#+(or :alpha :irix6 :x86_64)
      (setf _posy (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _posy (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; char _chr
     (setq _chr (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _dir
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dir (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass talklisten::Position
  :super ros::object
  :slots ())

(setf (get talklisten::Position :md5sum-) "d72baf183df81558beca8e5513a46eef")
(setf (get talklisten::Position :datatype-) "talklisten/Position")
(setf (get talklisten::Position :request) talklisten::PositionRequest)
(setf (get talklisten::Position :response) talklisten::PositionResponse)

(defmethod talklisten::PositionRequest
  (:response () (instance talklisten::PositionResponse :init)))

(setf (get talklisten::PositionRequest :md5sum-) "d72baf183df81558beca8e5513a46eef")
(setf (get talklisten::PositionRequest :datatype-) "talklisten/PositionRequest")
(setf (get talklisten::PositionRequest :definition-)
      "int64 posx
int64 posy
char ch
---
int64 posx
int64 posy
char chr
string dir

")

(setf (get talklisten::PositionResponse :md5sum-) "d72baf183df81558beca8e5513a46eef")
(setf (get talklisten::PositionResponse :datatype-) "talklisten/PositionResponse")
(setf (get talklisten::PositionResponse :definition-)
      "int64 posx
int64 posy
char ch
---
int64 posx
int64 posy
char chr
string dir

")



(provide :talklisten/Position "d72baf183df81558beca8e5513a46eef")


