(defun factorial (n)
  (if (<= n 1)
      1
      (* n (factorial (- n 1)))))

(let ((start-time (get-internal-real-time)))
  (format t "Factorial of 5 is ~d~%" (factorial 5))
  (let ((end-time (- (get-internal-run-time) start-time)))
    (format t "Running time: ~d milliseconds~%" end-time)))


(let ((start-alloc (room)))
  (format t "Factorial of 5 is ~d~%" (factorial 50))
  (let ((end-alloc (room)))
    (format t "Memory allocated: ~d bytes~%" (- end-alloc start-alloc))))
