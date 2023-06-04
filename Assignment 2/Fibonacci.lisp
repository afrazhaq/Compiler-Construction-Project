(defun fibonacci (n)
  (if (<= n 1)
      n
      (+ (fibonacci (- n 1)) (fibonacci (- n 2)))))

(defun fibonacci-series (limit)
  (do ((i 0 (+ i 1)))
      ((>= i limit))
    (format t "~d " (fibonacci i))))



(let ((start-time (get-internal-real-time)))
  (format t "Fibonacci of 10 is ~d~%" (fibonacci-series 10))
  (let ((end-time (- (get-internal-run-time) start-time)))
    (format t "Running time: ~d milliseconds~%" end-time)))


(let ((start-alloc (room)))
  (format t "Fibonacci of 10 is ~d~%" (fibonacci-series 10))
  (let ((end-alloc (room)))
    (format t "Memory allocated: ~d bytes~%" (- end-alloc start-alloc))))
