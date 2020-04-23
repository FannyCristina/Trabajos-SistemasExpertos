(defrule inicial
(vector $?vec
=>
(assert (vector-aux ? vec)))

(defrule ordena
?f <- (vector-aux $?b ?m1 ?m2&:( < ?m2 ?m1) $?e)
=>
(retract ?f)
(assert (vector-aux $?b ?m2 ?m1 $?e)))

(defrule final
(not (vector-aux $?b ?m1 ?m2&:( < ?m2 ?m1) $?e))
(vector $?vec)
(vector-aux $?ordenado)
=>
(printout t "Ordenar " ?vec " ordenado" ?ordenado crlf))