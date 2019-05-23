; Auto-generated. Do not edit!


(cl:in-package HW4-srv)


;//! \htmlinclude First_srv-request.msg.html

(cl:defclass <First_srv-request> (roslisp-msg-protocol:ros-message)
  ((srv
    :reader srv
    :initarg :srv
    :type cl:integer
    :initform 0)
   (val
    :reader val
    :initarg :val
    :type cl:integer
    :initform 0))
)

(cl:defclass First_srv-request (<First_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <First_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'First_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name HW4-srv:<First_srv-request> is deprecated: use HW4-srv:First_srv-request instead.")))

(cl:ensure-generic-function 'srv-val :lambda-list '(m))
(cl:defmethod srv-val ((m <First_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader HW4-srv:srv-val is deprecated.  Use HW4-srv:srv instead.")
  (srv m))

(cl:ensure-generic-function 'val-val :lambda-list '(m))
(cl:defmethod val-val ((m <First_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader HW4-srv:val-val is deprecated.  Use HW4-srv:val instead.")
  (val m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <First_srv-request>) ostream)
  "Serializes a message object of type '<First_srv-request>"
  (cl:let* ((signed (cl:slot-value msg 'srv)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'val)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <First_srv-request>) istream)
  "Deserializes a message object of type '<First_srv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'srv) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'val) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<First_srv-request>)))
  "Returns string type for a service object of type '<First_srv-request>"
  "HW4/First_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'First_srv-request)))
  "Returns string type for a service object of type 'First_srv-request"
  "HW4/First_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<First_srv-request>)))
  "Returns md5sum for a message object of type '<First_srv-request>"
  "f8869d9badbe825e7bdab772d9d5e138")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'First_srv-request)))
  "Returns md5sum for a message object of type 'First_srv-request"
  "f8869d9badbe825e7bdab772d9d5e138")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<First_srv-request>)))
  "Returns full string definition for message of type '<First_srv-request>"
  (cl:format cl:nil "int32 srv~%int32 val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'First_srv-request)))
  "Returns full string definition for message of type 'First_srv-request"
  (cl:format cl:nil "int32 srv~%int32 val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <First_srv-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <First_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'First_srv-request
    (cl:cons ':srv (srv msg))
    (cl:cons ':val (val msg))
))
;//! \htmlinclude First_srv-response.msg.html

(cl:defclass <First_srv-response> (roslisp-msg-protocol:ros-message)
  ((ans
    :reader ans
    :initarg :ans
    :type cl:integer
    :initform 0))
)

(cl:defclass First_srv-response (<First_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <First_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'First_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name HW4-srv:<First_srv-response> is deprecated: use HW4-srv:First_srv-response instead.")))

(cl:ensure-generic-function 'ans-val :lambda-list '(m))
(cl:defmethod ans-val ((m <First_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader HW4-srv:ans-val is deprecated.  Use HW4-srv:ans instead.")
  (ans m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <First_srv-response>) ostream)
  "Serializes a message object of type '<First_srv-response>"
  (cl:let* ((signed (cl:slot-value msg 'ans)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <First_srv-response>) istream)
  "Deserializes a message object of type '<First_srv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ans) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<First_srv-response>)))
  "Returns string type for a service object of type '<First_srv-response>"
  "HW4/First_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'First_srv-response)))
  "Returns string type for a service object of type 'First_srv-response"
  "HW4/First_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<First_srv-response>)))
  "Returns md5sum for a message object of type '<First_srv-response>"
  "f8869d9badbe825e7bdab772d9d5e138")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'First_srv-response)))
  "Returns md5sum for a message object of type 'First_srv-response"
  "f8869d9badbe825e7bdab772d9d5e138")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<First_srv-response>)))
  "Returns full string definition for message of type '<First_srv-response>"
  (cl:format cl:nil "int32 ans~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'First_srv-response)))
  "Returns full string definition for message of type 'First_srv-response"
  (cl:format cl:nil "int32 ans~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <First_srv-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <First_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'First_srv-response
    (cl:cons ':ans (ans msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'First_srv)))
  'First_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'First_srv)))
  'First_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'First_srv)))
  "Returns string type for a service object of type '<First_srv>"
  "HW4/First_srv")