; Auto-generated. Do not edit!


(cl:in-package talklisten-srv)


;//! \htmlinclude Position-request.msg.html

(cl:defclass <Position-request> (roslisp-msg-protocol:ros-message)
  ((posx
    :reader posx
    :initarg :posx
    :type cl:integer
    :initform 0)
   (posy
    :reader posy
    :initarg :posy
    :type cl:integer
    :initform 0)
   (ch
    :reader ch
    :initarg :ch
    :type cl:integer
    :initform 0))
)

(cl:defclass Position-request (<Position-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Position-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Position-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name talklisten-srv:<Position-request> is deprecated: use talklisten-srv:Position-request instead.")))

(cl:ensure-generic-function 'posx-val :lambda-list '(m))
(cl:defmethod posx-val ((m <Position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talklisten-srv:posx-val is deprecated.  Use talklisten-srv:posx instead.")
  (posx m))

(cl:ensure-generic-function 'posy-val :lambda-list '(m))
(cl:defmethod posy-val ((m <Position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talklisten-srv:posy-val is deprecated.  Use talklisten-srv:posy instead.")
  (posy m))

(cl:ensure-generic-function 'ch-val :lambda-list '(m))
(cl:defmethod ch-val ((m <Position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talklisten-srv:ch-val is deprecated.  Use talklisten-srv:ch instead.")
  (ch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Position-request>) ostream)
  "Serializes a message object of type '<Position-request>"
  (cl:let* ((signed (cl:slot-value msg 'posx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'posy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ch)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Position-request>) istream)
  "Deserializes a message object of type '<Position-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'posx) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'posy) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ch)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Position-request>)))
  "Returns string type for a service object of type '<Position-request>"
  "talklisten/PositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Position-request)))
  "Returns string type for a service object of type 'Position-request"
  "talklisten/PositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Position-request>)))
  "Returns md5sum for a message object of type '<Position-request>"
  "d72baf183df81558beca8e5513a46eef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Position-request)))
  "Returns md5sum for a message object of type 'Position-request"
  "d72baf183df81558beca8e5513a46eef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Position-request>)))
  "Returns full string definition for message of type '<Position-request>"
  (cl:format cl:nil "int64 posx~%int64 posy~%char ch~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Position-request)))
  "Returns full string definition for message of type 'Position-request"
  (cl:format cl:nil "int64 posx~%int64 posy~%char ch~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Position-request>))
  (cl:+ 0
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Position-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Position-request
    (cl:cons ':posx (posx msg))
    (cl:cons ':posy (posy msg))
    (cl:cons ':ch (ch msg))
))
;//! \htmlinclude Position-response.msg.html

(cl:defclass <Position-response> (roslisp-msg-protocol:ros-message)
  ((posx
    :reader posx
    :initarg :posx
    :type cl:integer
    :initform 0)
   (posy
    :reader posy
    :initarg :posy
    :type cl:integer
    :initform 0)
   (chr
    :reader chr
    :initarg :chr
    :type cl:integer
    :initform 0)
   (dir
    :reader dir
    :initarg :dir
    :type cl:string
    :initform ""))
)

(cl:defclass Position-response (<Position-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Position-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Position-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name talklisten-srv:<Position-response> is deprecated: use talklisten-srv:Position-response instead.")))

(cl:ensure-generic-function 'posx-val :lambda-list '(m))
(cl:defmethod posx-val ((m <Position-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talklisten-srv:posx-val is deprecated.  Use talklisten-srv:posx instead.")
  (posx m))

(cl:ensure-generic-function 'posy-val :lambda-list '(m))
(cl:defmethod posy-val ((m <Position-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talklisten-srv:posy-val is deprecated.  Use talklisten-srv:posy instead.")
  (posy m))

(cl:ensure-generic-function 'chr-val :lambda-list '(m))
(cl:defmethod chr-val ((m <Position-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talklisten-srv:chr-val is deprecated.  Use talklisten-srv:chr instead.")
  (chr m))

(cl:ensure-generic-function 'dir-val :lambda-list '(m))
(cl:defmethod dir-val ((m <Position-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talklisten-srv:dir-val is deprecated.  Use talklisten-srv:dir instead.")
  (dir m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Position-response>) ostream)
  "Serializes a message object of type '<Position-response>"
  (cl:let* ((signed (cl:slot-value msg 'posx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'posy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chr)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dir))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dir))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Position-response>) istream)
  "Deserializes a message object of type '<Position-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'posx) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'posy) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chr)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dir) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dir) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Position-response>)))
  "Returns string type for a service object of type '<Position-response>"
  "talklisten/PositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Position-response)))
  "Returns string type for a service object of type 'Position-response"
  "talklisten/PositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Position-response>)))
  "Returns md5sum for a message object of type '<Position-response>"
  "d72baf183df81558beca8e5513a46eef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Position-response)))
  "Returns md5sum for a message object of type 'Position-response"
  "d72baf183df81558beca8e5513a46eef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Position-response>)))
  "Returns full string definition for message of type '<Position-response>"
  (cl:format cl:nil "int64 posx~%int64 posy~%char chr~%string dir~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Position-response)))
  "Returns full string definition for message of type 'Position-response"
  (cl:format cl:nil "int64 posx~%int64 posy~%char chr~%string dir~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Position-response>))
  (cl:+ 0
     8
     8
     1
     4 (cl:length (cl:slot-value msg 'dir))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Position-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Position-response
    (cl:cons ':posx (posx msg))
    (cl:cons ':posy (posy msg))
    (cl:cons ':chr (chr msg))
    (cl:cons ':dir (dir msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Position)))
  'Position-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Position)))
  'Position-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Position)))
  "Returns string type for a service object of type '<Position>"
  "talklisten/Position")