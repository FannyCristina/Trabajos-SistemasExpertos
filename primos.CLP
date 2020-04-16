(deffunction primo(?num)
(bind ?n 0)
(bind ?aux (- ?num 1))
(loop-for-count(?i 3 ?aux)
(printout t (mod ?num ?i)crlf)
(if( = (mod ?num ?i)0)
then 
(if (neq ?num 2)
then
(bind ?n 1)
)))
(if(= ?n 1)
then
(printout t "No es primo" crlf)
else
(printout t "Numero primo :)" crlf)))
