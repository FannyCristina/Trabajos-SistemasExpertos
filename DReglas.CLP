(deffacts hechos-iniciales
(H)
(K)
)

(defrule H
(H)
=>
(assert (A))
) 
(printout t "Se activo A" crlf)

(defrule A
(A)
=>
(assert (E))
)
(printout t "Se activo E" crlf)

(defrule EYK
(E)
(K)
=>
(assert (B))
)
(printout t "Se activo B" crlf)

(defrule B
(B)
=>
(assert (D))
) 
(printout t "Se activo D" crlf)
 
(defrule EG
(E)
(G)
=>
(assert(C))
)
(printout t "Se activo C" crlf)

(defrule DZKC
(D)
(Z)
(K)
=>
(assert(C))
)
(printout t "Se activo C" crlf)

(defrule GKF
(G)
(K)
(F)
=>
(assert(A))
)
(printout t "Se activo A" crlf)