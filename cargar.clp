         CLIPS (6.31 6/12/19)
CLIPS> (load prueba.clp)
Defining deffacts: hechos-iniciales
Defining defrule: mamifero-1 +j+j
Defining defrule: mamifero-2 +j+j
Defining defrule: ave-1 +j+j
Defining defrule: ave-2 +j+j
Defining defrule: ave-3 +j+j
Defining defrule: carnivoro-1 +j+j
Defining defrule: carnivoro-2 +j+j
Defining defrule: carnivoro-3 +j+j
Defining defrule: carnivoro-4 +j+j
Defining defrule: ungulado-1 +j+j+j
Defining defrule: ungulado-2 =j+j+j
Defining defrule: leopardo =j+j+j+j
Defining defrule: tigre =j=j+j+j
Defining defrule: jirafa +j+j+j
Defining defrule: jirafa-2 =j+j+j
Defining defrule: jirafa-3 =j+j+j
Defining defrule: cebra =j+j+j
Defining defrule: avestruz +j+j+j+j
Defining defrule: avestruz-2 =j=j+j+j
Defining defrule: pinguino =j=j+j+j+j
Defining defrule: albatros =j+j+j
TRUE
CLIPS> (watch facts)
CLIPS> (watch rules)
CLIPS> (watch activations)
CLIPS> (reset)
<== f-0     (initial-fact)
==> f-0     (initial-fact)
==> f-1     (tiene-pelos)
==> Activation 0      mamifero-1: f-1
==> f-2     (da-leche)
==> Activation 0      mamifero-2: f-2
==> f-3     (suzie-tiene-plumas)
==> Activation 0      ave-1: f-3
==> f-4     (suzie-vuela-bien)
==> Activation 0      ave-2: f-4
CLIPS> (run)
FIRE    1 ave-2: f-4
==> f-5     (es-ave)
==> Activation 0      albatros: f-5,f-4
FIRE    2 albatros: f-5,f-4
==> f-6     (es-albatros)
FIRE    3 ave-1: f-3
FIRE    4 mamifero-2: f-2
==> f-7     (es-mamifero)
FIRE    5 mamifero-1: f-1
CLIPS> (load prueba.clp)

[CSTRCPSR1] WARNING: Redefining deffacts: hechos-iniciales

[CSTRCPSR1] WARNING: Redefining defrule: mamifero-1 +j+j
==> Activation 0      mamifero-1: f-1

[CSTRCPSR1] WARNING: Redefining defrule: mamifero-2 +j+j
==> Activation 0      mamifero-2: f-2

[CSTRCPSR1] WARNING: Redefining defrule: ave-1 +j+j
==> Activation 0      ave-1: f-3

[CSTRCPSR1] WARNING: Redefining defrule: ave-2 +j+j
==> Activation 0      ave-2: f-4

[CSTRCPSR1] WARNING: Redefining defrule: ave-3 +j+j

[CSTRCPSR1] WARNING: Redefining defrule: carnivoro-1 +j+j

[CSTRCPSR1] WARNING: Redefining defrule: carnivoro-2 +j+j

[CSTRCPSR1] WARNING: Redefining defrule: carnivoro-3 +j+j

[CSTRCPSR1] WARNING: Redefining defrule: carnivoro-4 +j+j

[CSTRCPSR1] WARNING: Redefining defrule: ungulado-1 =j+j+j

[CSTRCPSR1] WARNING: Redefining defrule: ungulado-2 =j+j+j

[CSTRCPSR1] WARNING: Redefining defrule: leopardo =j=j+j+j

[CSTRCPSR1] WARNING: Redefining defrule: tigre =j=j+j+j

[CSTRCPSR1] WARNING: Redefining defrule: jirafa =j+j+j

[CSTRCPSR1] WARNING: Redefining defrule: jirafa-2 =j+j+j

[CSTRCPSR1] WARNING: Redefining defrule: jirafa-3 =j+j+j

[CSTRCPSR1] WARNING: Redefining defrule: cebra =j+j+j

[CSTRCPSR1] WARNING: Redefining defrule: avestruz =j=j+j+j

[CSTRCPSR1] WARNING: Redefining defrule: avestruz-2 =j=j+j+j

[CSTRCPSR1] WARNING: Redefining defrule: pinguino =j=j+j+j+j

[CSTRCPSR1] WARNING: Redefining defrule: albatros =j+j+j
==> Activation 0      albatros: f-5,f-4
Defining defrule: hijo +j+j
TRUE
CLIPS> (run)
FIRE    1 albatros: f-5,f-4
FIRE    2 ave-2: f-4
FIRE    3 ave-1: f-3
FIRE    4 mamifero-2: f-2
FIRE    5 mamifero-1: f-1
CLIPS> (clear)
==> f-0     (initial-fact)
CLIPS> (load prueba.clp)
Defining deffacts: hechos-iniciales
Defining defrule: mamifero-1 +j+j
Defining defrule: mamifero-2 +j+j
Defining defrule: ave-1 +j+j
Defining defrule: ave-2 +j+j
Defining defrule: ave-3 +j+j
Defining defrule: carnivoro-1 +j+j
Defining defrule: carnivoro-2 +j+j
Defining defrule: carnivoro-3 +j+j
Defining defrule: carnivoro-4 +j+j
Defining defrule: ungulado-1 +j+j+j
Defining defrule: ungulado-2 =j+j+j
Defining defrule: leopardo =j+j+j+j
Defining defrule: tigre =j=j+j+j
Defining defrule: jirafa +j+j+j
Defining defrule: jirafa-2 =j+j+j
Defining defrule: jirafa-3 =j+j+j
Defining defrule: cebra =j+j+j
Defining defrule: avestruz +j+j+j+j
Defining defrule: avestruz-2 =j=j+j+j
Defining defrule: pinguino =j=j+j+j+j
Defining defrule: albatros =j+j+j
Defining defrule: hijo +j+j
TRUE
CLIPS> (watch facts)
CLIPS> (watch rules)
CLIPS> (watch activations)
CLIPS> (reset)
<== f-0     (initial-fact)
==> f-0     (initial-fact)
==> f-1     (tiene-pelos)
==> Activation 0      mamifero-1: f-1
==> f-2     (da-leche)
==> Activation 0      mamifero-2: f-2
==> f-3     (suzie-tiene-plumas)
==> Activation 0      ave-1: f-3
==> f-4     (suzie-vuela-bien)
==> Activation 0      ave-2: f-4
CLIPS> (run)
FIRE    1 ave-2: f-4
==> f-5     (es-ave)
==> Activation 0      albatros: f-5,f-4
FIRE    2 albatros: f-5,f-4
==> f-6     (es-albatros)
FIRE    3 ave-1: f-3
FIRE    4 mamifero-2: f-2
==> f-7     (es-mamifero)
FIRE    5 mamifero-1: f-1
CLIPS> 
