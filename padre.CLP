(defrule progenitor
(padre-de ?padre ?hijo)
(marido-de ?padre ?madre)
=>
(assert (progenitor-de ?madre ?hijo))
)
(defrule esposa
(marido-de ?hombre ?mujer)
=>
(assert (esposa-de ?mujer ?hombre))
(printout t ?mujer "es la esposa de " ?hombre crlf)
)
(defrule padre
(progenitor-de ?padre ?hijo)
(hombre ?padre)
=>
(assert (padre-de ?padre ?hijo))
(printout t ?padre " es padre de" ?hijo crlf)
)
(defrule madre
(progenitor-de ?madre ?hijo)
(mujer ?madre)
=>
(assert (madre-de ?madre ?hijo))
(printout t ?madre "es madre de" ?hijo crlf)
)
;Abuelitos
(defrule abuelos
(progenitor-de ?padre ?hijo)
(progenitor-de ?hijo ?nieto)
=>
(assert (abuelos-de ?padre ?nieto))
)
(defrule abuelo
(abuelos-de ?pade ?nieto)
(hombre ?padre)
=>
(assert (abuelo-de ?padre ?nieto))
(printout t ?padre "es abuelo de " ?nieto crlf)
)
(defrule abuela
(abuelos-de ?madre ?nieto)
(mujer ?madre)
=>
(assert(abuela-de ?madre ?nieto))
(printout t ?madre "es abuela de" ?nieto crlf)
)
;Hermanos 
(defrule hermanos
(padre-de ?padre ?hijo)
(padre-de ?padre ?hijo2)
(test (neq ?hijo ?hijo2))
=>
(assert (hermanos ?hijo ?hijo2))
)
(defrule hermanos-madre
(madre-de ?madre ?hijo)
(madre-de ?madre ?hijo2)
(test (neq ?hijo ?hijo2)
=>
(assert (hermanos ?hijo ?hijo2))
)
(defrule hermano
(hermanos ?hijo ?hijo2)
(hombre ?hijo)
=>
(assert (hermano-de ?hijo ?hijo2))
(printout t ?hijo1 "es hermano de " ?hijo2 crlf)
)
(defrule hermana
(hermanos ?hijo ?hijo2)
(mujer ?hijo)
=>
(assert (hermana-de ?hijo ?hijo2))
(printout t ?hijo "es hermana de " ?hijo2 crlf)
)
; tioss
(defrule tios
(progenitor-de ?padre ?hijo)
(hermanos ?padre ?hermano)
=>
(assert (tios ?hermano ?hijo))
)
(defrule tio
(tios ?tio ?sobrino)
(hombre ?tio)
=>
(assert (tio ?tio ?sobrino))
(printout t ?tio "es tio de" ?sobrino crlf)
)
(defrule tia
(tios ?tia ?sobrino)
(mujer ?tia)
=>
(assert (tia ?tia ?sobrino))
(printout t ?tia "es tia de" ?sobrino crlf)
)
(defrule sobrino
(tios ?tios ?sobrino)
(hombre ?sobrino)
=>
(assert (sobrino-de  ?sobrino ?tios))
(printout t ?sobrino "es sobrino de " ?tios crlf)
)
(defrule sobrina
(tios ?tios ?sobrina)
(mujer ?sobrina)
=>
(assert (sobrina-de ?sobrina ?tios))
(printout t ?sobrina "es sobrina de " ?tios crlf)
)
; HECHOS

(deffacts inicio
(hombre Ricardo)
(mujer Fabiola)
(hombe Andres)
(mujer Rosa)
(mujer Maria)
(progenitor-de Ricardo David)
(progenitor-de Ricardo Alejandro)
maridode Ricardo Fabiola)
(progenitor-de David Luis)
(


