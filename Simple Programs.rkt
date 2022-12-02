#lang racket
;;Defina uma função que encontre o maior valor entre 2 valores dados.
(
 define (maior a b)
  (
   if (> a b) a b
  )
)
;;Defina uma função que receba 3 n ́umeros como parˆametros e retorne a soma dos quadrados
;;dos dois maiores numeros.
(define (somaQuadrado a b)
  (+ (* a a)(* b b))
  )
(define (quadrado x y z)
  (cond[ ( and  (< x y) (< x z) ) (somaQuadrado y z) ]
  [( and  (< x y)  (> x z) ) (somaQuadrado x y) ]
  [( and  (> x y)  (> y z) ) (somaQuadrado x y) ]
  [( and  (> x y)  (< y z) ) (somaQuadrado x z) ]
  [else 0]

  )

  )
;;Defina uma fun ̧c ̃ao que calcule a distˆancia de um ponto no plano cartesiano (representado por dois
;;numeros) a origem.

(define ( distancia x y x-origem y-origem  )
   (sqrt ( + (expt (- x-origem x) 2) (expt (- y-origem y) 2)))
)
;;Defina uma funcao que receba como parˆametro 3 numeros que representam os lados de um triˆangulo
;;e classifique o triˆangulo como equil ́atero, isosceles ou escaleno. Veja a pagina sobre triˆangulos na
;;Wikipédia.

(define (classificaTriangulo a b c)
  (cond [(= a b c) print "Triângulo equilátero"]
        [(or (= a b )(= a c) (= b c) ) print "Triângulo isóceles"]
        [(not( = a b c)) print "Triângulo escaleno"]

        )
)
;;Defina uma funcao que classifique o grau de obesidade de uma pessoa usando o IMC.
;;Altura em cm

(define (IMC peso altura )
 
  (define imc (* (/ peso (expt altura 2)) 10000) )
  
  (cond[(< imc 18.5) (string-append "imc - " (~v (exact->inexact imc))  " -> peso baixo")]
       [(and (> imc 18.5)(< imc 24.9)) print (string-append "imc - " (~v (exact->inexact imc)) " -> peso normal")]
       [(and (> imc 25.0)(< imc 29.9)) print (string-append "imc - " (~v (exact->inexact imc)) " -> sobre peso")]
       [(and (> imc 30.0)(< imc 34.9)) print (string-append "imc - " (~v (exact->inexact imc)) " -> obesidade grau I")]
       [(and (> imc 35.0)(< imc 39.9)) print (string-append "imc - " (~v (exact->inexact imc)) " -> obesidade grau II")]
       [else  print (string-append "imc - " (~v (exact->inexact imc)) " - obesidade grau III ou mórbida")]
   )

  )

