(deffacts hechos-iniciales
(animal-robbie)
(robbie-manchas oscuras)
(robbie-come-carne)
(suzie-tiene-plumas)
(suzie-vuela-bien)
)

(defrule mamifero-1
(tiene-pelos)
=>
(assert (es-mamifero))
)

(defrule mamifero-2
(da-leche)
=>
(assert (es-mamifero))
)

(defrule ave-1
(suzie-tiene-plumas)
=>
(assert (es-ave))
)

(defrule ave-2
(suzie-vuela-bien)
=>
(assert (es-ave))
)

(defrule ave-3
(pone-huevos)
=>
(assert (es-ave))
)

(defrule carnivoro-1
(robbie-come-carne)
=>
(assert (es-carnivoro))
)

(defrule carnivoro-2
(tiene-dientes-puntiguados)
=>
(assert (es-carnivoro))
)

(defrule carnivoro-3
(tiene-garras)
=>
(assert (es-carnivoro))
)

(defrule carnivoro-4
(tiene-ojos-frente)
=>
(assert (es-carnivoro))
)

(defrule ungulado-1
(es-mamifero)
(tiene-pezunias)
=>
(assert (es-ungulado))
)

(defrule ungulado-2
(es-mamifero)
(rumia)
=>
(assert (es-ungulado))
)

(defrule leopardo
(es-mamifero)
(es-carnivoro)
(robbie-manchas-oscuras)
=>
(assert (es-leopardo))
)

(defrule tigre
(es-mamifero)
(es-carnivoro)
(leonado-con-rayas)
=>
(assert (es-tigre))
)

(defrule jirafa
(es-ungulado)
(tiene-cuello-largo)
=>
(assert (es-jirafa))
)

(defrule jirafa-2
(es-ungulado)
(tiene-piernas-largas)
=>
(assert (es-jirafa))
)

(defrule jirafa-3
(es-ungulado)
(tiene-manchas-oscuras)
=>
(assert (es-jirafa))
)

(defrule cebra
(es-ungulado)
(tiene-rayas-negras)
=>
(assert (es-cebra))
)

(defrule avestruz
(es-ave)
(no-vuela)
(tiene-cuello-largo)
=>
(assert (es-avestruz))
)

(defrule avestruz-2
(es-ave)
(no-vuela)
(tiene-piernas-largas)
=>
(assert (es-avestruz))
)

(defrule pinguino
(es-ave)
(no-vuela)
(nada)
(color-blanco-negro)
=>
(assert (es-pinguino))
)

(defrule albatros
(es-ave)
(suzie-vuela-bien)
=>
(assert (es-albatros))
)

(defrule especie
(animal-especie)
(animal-padre-otro)
=>
(assert (hijo-misma-especie))
)


(deffacts inicio
(mamifero tiene-pelos)
(mamifero da-leche)
)
