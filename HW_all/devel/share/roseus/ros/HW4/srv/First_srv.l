;; Auto-generated. Do not edit!


(when (boundp 'HW4::First_srv)
  (if (not (find-package "HW4"))
    (make-package "HW4"))
  (shadow 'First_srv (find-package "HW4")))
(unless (find-package "HW4::FIRST_SRV")
  (make-package "HW4::FIRST_SRV"))
(unless (find-package "HW4::FIRST_SRVREQUEST")
  (make-package "HW4::FIRST_SRVREQUEST"))
(unless (find-package "HW4::FIRST_SRVRESPONSE")
  (make-package "HW4::FIRST_SRVRESPONSE"))

(in-package "ROS")





(defclass HW4::First_srvRequest
  :super ros::object
  :slots (_srv _val ))

(defmethod HW4::First_srvRequest
  (:init
   (&key
    ((:srv __srv) 0)
    ((:val __val) 0)
    )
   (send-super :init)
   (setq _srv (round __srv))
   (setq _val (round __val))
   self)
  (:srv
   (&optional __srv)
   (if __srv (setq _srv __srv)) _srv)
  (:val
   (&optional __val)
   (if __val (setq _val __val)) _val)
  (:serialization-length
   ()
   (+
    ;; int32 _srv
    4
    ;; int32 _val
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _srv
       (write-long _srv s)
     ;; int32 _val
       (write-long _val s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _srv
     (setq _srv (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _val
     (setq _val (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass HW4::First_srvResponse
  :super ros::object
  :slots (_ans ))

(defmethod HW4::First_srvResponse
  (:init
   (&key
    ((:ans __ans) 0)
    )
   (send-super :init)
   (setq _ans (round __ans))
   self)
  (:ans
   (&optional __ans)
   (if __ans (setq _ans __ans)) _ans)
  (:serialization-length
   ()
   (+
    ;; int32 _ans
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ans
       (write-long _ans s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ans
     (setq _ans (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass HW4::First_srv
  :super ros::object
  :slots ())

(setf (get HW4::First_srv :md5sum-) "f8869d9badbe825e7bdab772d9d5e138")
(setf (get HW4::First_srv :datatype-) "HW4/First_srv")
(setf (get HW4::First_srv :request) HW4::First_srvRequest)
(setf (get HW4::First_srv :response) HW4::First_srvResponse)

(defmethod HW4::First_srvRequest
  (:response () (instance HW4::First_srvResponse :init)))

(setf (get HW4::First_srvRequest :md5sum-) "f8869d9badbe825e7bdab772d9d5e138")
(setf (get HW4::First_srvRequest :datatype-) "HW4/First_srvRequest")
(setf (get HW4::First_srvRequest :definition-)
      "int32 srv
int32 val
---
int32 ans


")

(setf (get HW4::First_srvResponse :md5sum-) "f8869d9badbe825e7bdab772d9d5e138")
(setf (get HW4::First_srvResponse :datatype-) "HW4/First_srvResponse")
(setf (get HW4::First_srvResponse :definition-)
      "int32 srv
int32 val
---
int32 ans


")



(provide :HW4/First_srv "f8869d9badbe825e7bdab772d9d5e138")


