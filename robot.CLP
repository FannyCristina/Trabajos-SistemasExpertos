(defrule tipo-robot-regla
(initial-fact)
=>
(printout t "Que configuracion tiene (peaton/carro)?" crlf)
(assert (tipo-robot(read)))
)

(defrule semaforo-peaton
(tipo-robot peaton)
=>
(printout t "Color del semaforo" crlf)
(printout t "rojo/verde/amarrillo" crlf)
(assert (semaforo (read))
))

(defrule semaforo-carro
(tipo-robot carro)
=>
(printout t "Color semaforo" crlf)
(printout t "rojo/verde/amarillo" crlf)
(assert (semaforo(read))
))

(defrule pasar
(tipo-robot  ?tipo)
(semaforo verde)
=>
(printout t "El robot" ?tipo "puede pasar" crlf)
)

(defrule precaucion
(tipo-robot ?tipo)
(semaforo amarillo)
=>
(printout t "el robot " ?tipo "pasar con precaucuon")
)

(defrule esperar
(tipo-robot ?tipo)
(semaforo rojo)
=>
(printout t "El robot" ?tipo " no puede pasar")
)