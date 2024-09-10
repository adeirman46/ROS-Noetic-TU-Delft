;; Auto-generated. Do not edit!


(when (boundp 'hrwros_week1_assignment::BoxHeightInformation)
  (if (not (find-package "HRWROS_WEEK1_ASSIGNMENT"))
    (make-package "HRWROS_WEEK1_ASSIGNMENT"))
  (shadow 'BoxHeightInformation (find-package "HRWROS_WEEK1_ASSIGNMENT")))
(unless (find-package "HRWROS_WEEK1_ASSIGNMENT::BOXHEIGHTINFORMATION")
  (make-package "HRWROS_WEEK1_ASSIGNMENT::BOXHEIGHTINFORMATION"))

(in-package "ROS")
;;//! \htmlinclude BoxHeightInformation.msg.html


(defclass hrwros_week1_assignment::BoxHeightInformation
  :super ros::object
  :slots (_box_height _box_height_info ))

(defmethod hrwros_week1_assignment::BoxHeightInformation
  (:init
   (&key
    ((:box_height __box_height) 0.0)
    ((:box_height_info __box_height_info) nil)
    )
   (send-super :init)
   (setq _box_height (float __box_height))
   (setq _box_height_info __box_height_info)
   self)
  (:box_height
   (&optional __box_height)
   (if __box_height (setq _box_height __box_height)) _box_height)
  (:box_height_info
   (&optional (__box_height_info :null))
   (if (not (eq __box_height_info :null)) (setq _box_height_info __box_height_info)) _box_height_info)
  (:serialization-length
   ()
   (+
    ;; float32 _box_height
    4
    ;; bool _box_height_info
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _box_height
       (sys::poke _box_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _box_height_info
       (if _box_height_info (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _box_height
     (setq _box_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _box_height_info
     (setq _box_height_info (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get hrwros_week1_assignment::BoxHeightInformation :md5sum-) "bc8c91069d9f99232ef43230895a9f44")
(setf (get hrwros_week1_assignment::BoxHeightInformation :datatype-) "hrwros_week1_assignment/BoxHeightInformation")
(setf (get hrwros_week1_assignment::BoxHeightInformation :definition-)
      "# Add your code for part 2 here
float32 box_height
bool box_height_info
")



(provide :hrwros_week1_assignment/BoxHeightInformation "bc8c91069d9f99232ef43230895a9f44")


