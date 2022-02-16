; Auto-generated. Do not edit!


(cl:in-package drone-srv)


;//! \htmlinclude Sender-request.msg.html

(cl:defclass <Sender-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass Sender-request (<Sender-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sender-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sender-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drone-srv:<Sender-request> is deprecated: use drone-srv:Sender-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Sender-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone-srv:x-val is deprecated.  Use drone-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Sender-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone-srv:y-val is deprecated.  Use drone-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sender-request>) ostream)
  "Serializes a message object of type '<Sender-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sender-request>) istream)
  "Deserializes a message object of type '<Sender-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sender-request>)))
  "Returns string type for a service object of type '<Sender-request>"
  "drone/SenderRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sender-request)))
  "Returns string type for a service object of type 'Sender-request"
  "drone/SenderRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sender-request>)))
  "Returns md5sum for a message object of type '<Sender-request>"
  "5e71a6351e81d13c69a7ec3796769e8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sender-request)))
  "Returns md5sum for a message object of type 'Sender-request"
  "5e71a6351e81d13c69a7ec3796769e8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sender-request>)))
  "Returns full string definition for message of type '<Sender-request>"
  (cl:format cl:nil "float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sender-request)))
  "Returns full string definition for message of type 'Sender-request"
  (cl:format cl:nil "float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sender-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sender-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Sender-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude Sender-response.msg.html

(cl:defclass <Sender-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Sender-response (<Sender-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sender-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sender-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drone-srv:<Sender-response> is deprecated: use drone-srv:Sender-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Sender-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone-srv:success-val is deprecated.  Use drone-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sender-response>) ostream)
  "Serializes a message object of type '<Sender-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sender-response>) istream)
  "Deserializes a message object of type '<Sender-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sender-response>)))
  "Returns string type for a service object of type '<Sender-response>"
  "drone/SenderResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sender-response)))
  "Returns string type for a service object of type 'Sender-response"
  "drone/SenderResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sender-response>)))
  "Returns md5sum for a message object of type '<Sender-response>"
  "5e71a6351e81d13c69a7ec3796769e8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sender-response)))
  "Returns md5sum for a message object of type 'Sender-response"
  "5e71a6351e81d13c69a7ec3796769e8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sender-response>)))
  "Returns full string definition for message of type '<Sender-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sender-response)))
  "Returns full string definition for message of type 'Sender-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sender-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sender-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Sender-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Sender)))
  'Sender-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Sender)))
  'Sender-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sender)))
  "Returns string type for a service object of type '<Sender>"
  "drone/Sender")