         CLIPS (6.31 6/12/19)
CLIPS> (deffunction fibo(?num)
(if(< ?num 2) then
?num
else(+(fi(- ?num 1))(fi(- ?num 2))))
)

[EXPRNPSR3] Missing function declaration for fi.

ERROR:
(deffunction MAIN::fibo
   (?num)
   (if (< ?num 2)
      then
      ?num
      else
      (+ (fi
CLIPS> (deffunction fibo(?num)
(if(< ?num 2) then
?num
else(+(fibo(- ?num 1))(fibo(- ?num 2))))
)
CLIPS> (deffunction fibonacci(?num)
(loop-for-count(?c 0 (- ?n 1)) do
(printout t "Ingrese el numero" (fibo ?cont)crlf)
)
)

[PRCCODE3] Undefined variable n referenced in deffunction.

ERROR:
(deffunction MAIN::fibonacci
   (?num)
   (loop-for-count (?c 0 (- ?n 1))  do
      (printout t "Ingrese el numero" (fibo ?cont) crlf))
   )
CLIPS> (deffunction fibonacci(?num)
(loop-for-count(?c 0 (- ?n 1)) do
(printout t "Ingrese el numero" (fibo ?cont)crlf)
)
)(printout t "" (fibonacci 5)crlf)

[PRCCODE3] Undefined variable n referenced in deffunction.

ERROR:
(deffunction MAIN::fibonacci
   (?num)
   (loop-for-count (?c 0 (- ?n 1))  do
      (printout t "Ingrese el numero" (fibo ?cont) crlf))
   )
CLIPS> (deffunction fibonacci(?num)
(loop-for-count(?c 0 (- ?num 1)) do
(printout t "Ingrese el numero" (fibo ?cont)crlf)
)
)(printout t "" (fibonacci 5)crlf)

[PRCCODE3] Undefined variable cont referenced in deffunction.

ERROR:
(deffunction MAIN::fibonacci
   (?num)
   (loop-for-count (?c 0 (- ?num 1))  do
      (printout t "Ingrese el numero" (fibo ?cont) crlf))
   )
CLIPS> (deffunction fibonacci(?num)
(loop-for-count(?c 0 (- ?num 1)) do
(printout t "Ingrese el numero" (fibo ?c)crlf)
)
)(printout t "" (fibonacci 5)crlf)
CLIPS> (deffunction fibonacci(?num)
(loop-for-count(?c 0 (- ?num 1)) do
(printout t "Ingrese el numero" (fibo ?c)crlf)
)
)
(printout t "" (fibonacci 5) crlf)CLIPS> 

