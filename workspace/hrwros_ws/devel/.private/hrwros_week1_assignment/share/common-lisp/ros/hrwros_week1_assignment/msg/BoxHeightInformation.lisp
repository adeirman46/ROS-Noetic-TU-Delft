; Auto-generated. Do not edit!


(cl:in-package hrwros_week1_assignment-msg)


;//! \htmlinclude BoxHeightInformation.msg.html

(cl:defclass <BoxHeightInformation> (roslisp-msg-protocol:ros-message)
  ((box_height
    :reader box_height
    :initarg :box_height
    :type cl:float
    :initform 0.0)
   (box_height_info
    :reader box_height_info
    :initarg :box_height_info
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BoxHeightInformation (<BoxHeightInformation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoxHeightInformation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoxHeightInformation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrwros_week1_assignment-msg:<BoxHeightInformation> is deprecated: use hrwros_week1_assignment-msg:BoxHeightInformation instead.")))

(cl:ensure-generic-function 'box_height-val :lambda-list '(m))
(cl:defmethod box_height-val ((m <BoxHeightInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_week1_assignment-msg:box_height-val is deprecated.  Use hrwros_week1_assignment-msg:box_height instead.")
  (box_height m))

(cl:ensure-generic-function 'box_height_info-val :lambda-list '(m))
(cl:defmethod box_height_info-val ((m <BoxHeightInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_week1_assignment-msg:box_height_info-val is deprecated.  Use hrwros_week1_assignment-msg:box_height_info instead.")
  (box_height_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoxHeightInformation>) ostream)
  "Serializes a message object of type '<BoxHeightInformation>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'box_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'box_height_info) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoxHeightInformation>) istream)
  "Deserializes a message object of type '<BoxHeightInformation>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'box_height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'box_height_info) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoxHeightInformation>)))
  "Returns string type for a message object of type '<BoxHeightInformation>"
  "hrwros_week1_assignment/BoxHeightInformation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoxHeightInformation)))
  "Returns string type for a message object of type 'BoxHeightInformation"
  "hrwros_week1_assignment/BoxHeightInformation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoxHeightInformation>)))
  "Returns md5sum for a message object of type '<BoxHeightInformation>"
  "bc8c91069d9f99232ef43230895a9f44")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoxHeightInformation)))
  "Returns md5sum for a message object of type 'BoxHeightInformation"
  "bc8c91069d9f99232ef43230895a9f44")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoxHeightInformation>)))
  "Returns full string definition for message of type '<BoxHeightInformation>"
  (cl:format cl:nil "# Add your code for part 2 here~%float32 box_height~%bool box_height_info~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoxHeightInformation)))
  "Returns full string definition for message of type 'BoxHeightInformation"
  (cl:format cl:nil "# Add your code for part 2 here~%float32 box_height~%bool box_height_info~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoxHeightInformation>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoxHeightInformation>))
  "Converts a ROS message object to a list"
  (cl:list 'BoxHeightInformation
    (cl:cons ':box_height (box_height msg))
    (cl:cons ':box_height_info (box_height_info msg))
))
