(defrule MAIN::inicial
(initial-fac)
=>
(printout t "Verificaremos el tipo de triangulo" crlf)
(printout t "Opciones:" crlf)
(printout t "1) Triangulo por lados" crlf)
(printout t "2) Triangulo por angulos" crlf)
(assert (opcion(read)))
)

(defrule MAIN::lados
(opcion 1)
=>
(printout t "Escoja la opcion" crlf)
(printout t "1) Triangulo de 3 lados iguales" crlf)
(printout t "2) Triangulo de 2 lados iguales" crlf)
(printout t "3) Triangulo no tiene lados iguales" crlf)
(assert(numerolados(read)))
)

(defrule MAIN:: tres(numerolados 1)
=>
(printout t "Es un triangulo Equilatero" crlf))

(defrule MAIN:: dos(numerolados 2)
=>
(printout t "Es un triangulo Isosceles" crlf))

(defrule MAIN:: cero(numerolados 3)
=>
(printout t "Es un triangulo Escaleno" crlf))

(defrule MAIN::angulos
(opcion 2)
=>
(printout t "Escoja la opcion" crlf)
(printout t "1) El triangulo tiene un angulo de 90g " crlf)
(printout t "2) El triangulo tiene dos angulo menor de 90g " crlf)
(printout t "3) El triangulo tiene un angulo mayor de 90g " crlf)
(assert(gradoangulo(read)))
)

(defrule MAIN::igual(gradoangulo 1)
=>
(prinout t "El triangulo es Rectangulo" crlf)

(defrule MAIN::menor(gradoangulo 2)
=>
(prinout t "El triangulo es Acutangulo" crlf)

(defrule MAIN::mayor(gradoangulo 3)
=>
(prinout t "El triangulo es Obtasangulo" crlf))
