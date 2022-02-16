;; Auto-generated. Do not edit!


(when (boundp 'drone::Sender)
  (if (not (find-package "DRONE"))
    (make-package "DRONE"))
  (shadow 'Sender (find-package "DRONE")))
(unless (find-package "DRONE::SENDER")
  (make-package "DRONE::SENDER"))
(unless (find-package "DRONE::SENDERREQUEST")
  (make-package "DRONE::SENDERREQUEST"))
(unless (find-package "DRONE::SENDERRESPONSE")
  (make-package "DRONE::SENDERRESPONSE"))

(in-package "ROS")





(defclass drone::SenderRequest
  :super ros::object
  :slots (_x _y ))

(defmethod drone::SenderRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass drone::SenderResponse
  :super ros::object
  :slots (_success ))

(defmethod drone::SenderResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass drone::Sender
  :super ros::object
  :slots ())

(setf (get drone::Sender :md5sum-) "5e71a6351e81d13c69a7ec3796769e8e")
(setf (get drone::Sender :datatype-) "drone/Sender")
(setf (get drone::Sender :request) drone::SenderRequest)
(setf (get drone::Sender :response) drone::SenderResponse)

(defmethod drone::SenderRequest
  (:response () (instance drone::SenderResponse :init)))

(setf (get drone::SenderRequest :md5sum-) "5e71a6351e81d13c69a7ec3796769e8e")
(setf (get drone::SenderRequest :datatype-) "drone/SenderRequest")
(setf (get drone::SenderRequest :definition-)
      "float64 x
float64 y
---
bool success
")

(setf (get drone::SenderResponse :md5sum-) "5e71a6351e81d13c69a7ec3796769e8e")
(setf (get drone::SenderResponse :datatype-) "drone/SenderResponse")
(setf (get drone::SenderResponse :definition-)
      "float64 x
float64 y
---
bool success
")



(provide :drone/Sender "5e71a6351e81d13c69a7ec3796769e8e")


