# Funciones Solitarias

Asignación programada para realizar las mismas funciones en diferentes lenguajes, el codigo contiene las siguientes:

### Scala:

`merge`
`nthcdr`

`EsFibonacciP`
`ListaFibonaccis`

`multiplMatricesInt`
`ReverseInt`

### Haskell:

`merge`
`nthcdr`

`EsFibonacciP`
`ListaFibonaccis`

`ReverseInt`

### Camllight:

`merge`
`nthcdr`

`EsFibonacciP`

# Explicación de las funciones:

* Merge:
Recibe dos listas del mismo tipo y genera una mezcla de ambas, un elemento de cada una en el orden en que los recibió se detiene cuando mezcla las dos listas completas.

* Nthcdr:
Recibe un número entero y una lista y retorna el equivalente a aplicar N cdrs a esa lista.

* EsFibonacciP:
Predicado que dice si un número es parte de la serie de fibonacci.

* ListaFibonaccis:
Recibe un entero que sirve de cota superior y retorna una lista con todos los números de la serie de fibonacci que sean menores a esa cota.

* ReverseInt:
Recibe un entero y le da vuelta. un 234 regresaría un 432. Recuerde que no debe haber limitaciones con respecto a los enteros que recibe. Debe trabajar correctamente con todos los enteros que maneje el lenguaje (ojo con los negativos).

* MultiplicacionMatricesInt:
Recibe dos matrices de enteros representadas como listas de listas de enteros y retorna el resultado de efectuar la multiplciación de matrices. Si los tamaños de alguna de las matrices no calza para hacer las multiplciaciones pueden dar un error.

# Como probarlas
Se recomienda utilizar los REPL (read eval print loop) de cada lenguaje, el metodo de instalarlos difiere de operativo a operativo pero por lo general el nombre de los REPL es el siguiente: para haskell `ghc`, para scala `scala`, para caml `camllight`. También se puede buscar un interprete/repl online.

### Haskell:
en caso de cargarlo en un repl, el archivo se carga con `:load haskell.hs`

merge
*Main> merge [1,2,3][4,5,6]
[1,2,3,4,5,6]

nthcdr
*Main> nthcdr [1,2,3,4,5,6] 3
[4,5,6]

esFibonacciP
*Main> esFibonacciP 144
True
*Main> esFibonacciP 143
False

listaFibonaccis
*Main> listaFibonaccis 234
[0,1,1,2,3,5,8,13,21,34,55,89,144,233]
*Main> listaFibonaccis 145
[0,1,1,2,3,5,8,13,21,34,55,89,144]

multiplMatricesInt
*Main> multiplMatricesInt [[1,2,3],[4,5,6]] [[7,10],[8,11],[9,12]]
[[50,68],[122,167]]


reverseInt
*Main> reverseInt (-3421)
-1243
*Main> reverseInt 69696969
96969696


### Scala:
en caso de cargarlo en un repl, el archivo se carga con `:load scala.scala`

merge
scala> merge(List(3,4,1,2,3),List('a','b','c'))
res14: List[Any] = List(3, 4, 1, 2, 3, a, b, c)

nthcdr
scala> nthcdr(List(3,4,1,2,3),4)
res12: List[Any] = List(3)

esFibonacciP
scala> esFibonacciP(144)
res6: Boolean = true
scala> esFibonacciP(145)
res7: Boolean = false

listaFibonaccis
scala> listaFibonaccis(144)
res61: List[Int] = List(0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89)
scala> listaFibonaccis(145)
res62: List[Int] = List(0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144)

multiplMatricesInt

reverseInt
scala> reverseInt (1234)
res50: Int = 4321

scala> reverseInt (-1234)
res51: Int = -4321

### Camllight:
en caso de cargarlo en un repl, el archivo se carga con `include “caml.ml”;;`

merge
#merge [1;3;4] [12;3;4];;
- : int list = [1; 3; 4; 12; 3; 4]

