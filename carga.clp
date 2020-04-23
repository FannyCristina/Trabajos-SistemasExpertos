         CLIPS (6.31 6/12/19)
CLIPS> (load "reglas.clp")
Defining deffacts: hechos-iniciales
Defining defrule: mamifer-1 +j+j
Defining defrule: mamifero-2 +j+j
Defining defrule: ungulado-1 +j+j+j
Defining defrule: ungulado-2 =j+j+j
Defining defrule: jirafa +j+j+j
Defining defrule: cebra =j+j+j
TRUE
CLIPS> (reset)
CLIPS> (run)
CLIPS> (facts)
f-0     (initial-fact)
f-1     (tiene-pelos)
f-2     (tiene-pezunias)
f-3     (tiene-rayas-negras)
f-4     (es-mamifero)
f-5     (es-ungulado)
f-6     (es-jirafa)
For a total of 7 facts.
CLIPS> 
