#lang racket
;;1 - Defina uma função que encontre o maior valor entre 2 valores dados.
(
 define (maior a b)
  (
   if (> a b) a b
  )
)

;;2 - Defina uma função que receba 3 n ́umeros como parâmetros e retorne a soma dos quadrados
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
;;3 - Defina uma funcao que calcule a distância de um ponto no plano cartesiano (representado por dois
;;numeros) a origem.

(define ( distancia x y x-origem y-origem  )
   (sqrt ( + (expt (- x-origem x) 2) (expt (- y-origem y) 2)))
)

;;4 - Defina uma funcao que receba como parâmetro 3 numeros que representam os lados de um triângulo
;;e classifique o triângulo como equilátero, isosceles ou escaleno. Veja a pagina sobre triângulos na
;;Wikip ́edia.

(define (classificaTriangulo a b c)
  (cond [(= a b c) print "Triângulo equilátero"]
        [(or (= a b )(= a c) (= b c) ) print "Triângulo isóceles"]
        [(not( = a b c)) print "Triângulo escaleno"]

        )
)
(define (IMC peso altura ))

