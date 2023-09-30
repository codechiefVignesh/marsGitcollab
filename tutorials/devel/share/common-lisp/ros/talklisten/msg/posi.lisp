; Auto-generated. Do not edit!


(cl:in-package talklisten-msg)


;//! \htmlinclude posi.msg.html

(cl:defclass <posi> (roslisp-msg-protocol:ros-message)
  ((ch
    :reader ch
    :initarg :ch
    :type cl:integer
    :initform 0))
)

(cl:defclass posi (<posi>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <posi>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'posi)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name talklisten-msg:<posi> is deprecated: use talklisten-msg:posi instead.")))

(cl:ensure-generic-function 'ch-val :lambda-list '(m))
(cl:defmethod ch-val ((m <posi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talklisten-msg:ch-val is deprecated.  Use talklisten-msg:ch instead.")
  (ch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <posi>) ostream)
  "Serializes a message object of type '<posi>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ch)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <posi>) istream)
  "Deserializes a message object of type '<posi>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ch)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<posi>)))
  "Returns string type for a message object of type '<posi>"
  "talklisten/posi")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'posi)))
  "Returns string type for a message object of type 'posi"
  "talklisten/posi")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<posi>)))
  "Returns md5sum for a message object of type '<posi>"
  "dd7240a84f4873bbc50cced87558e8eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'posi)))
  "Returns md5sum for a message object of type 'posi"
  "dd7240a84f4873bbc50cced87558e8eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<posi>)))
  "Returns full string definition for message of type '<posi>"
  (cl:format cl:nil "char ch~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'posi)))
  "Returns full string definition for message of type 'posi"
  (cl:format cl:nil "char ch~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <posi>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <posi>))
  "Converts a ROS message object to a list"
  (cl:list 'posi
    (cl:cons ':ch (ch msg))
))
