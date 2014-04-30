
(defclass task ()
  ((name :initarg :name :initform "task" :accessor name)
   (process :initarg :process :initform nil :accessor process)
   (priority :initarg :priority :initform 10 :accessor priority)
   (initial-time :initarg :initial-time :initform nil :accessor initial-time)
   (final-time :initform nil :accessor final-time)
   (value :initarg :value :initform 0 :accessor value)))


(defun search-task-running-time (task)
  "Answer the running time for <task>."
  (if (null (final-time task)) 
      (if (null (initial-time task))
          0
        (- (get-universal-time) (initial-time task)))
    (- (final-time task) (initial-time task))))
  
(defun execute-search (task)
  "Execute <task> while updating its state."
  (setf (initial-time task) (get-universal-time))
  (search-loop task)
  (setf (final-time task) (get-universal-time))

(defun search-loop (task)
  "Method where calculations take place for <task>."
  (dotimes (i 100001)
    (let ((p (/ i 1000)))
      (dotimes (j 1000000)
        (* (sin i) (+ (tan (sin j)))))
      (setf (value task) p))))