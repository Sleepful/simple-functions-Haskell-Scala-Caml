def nthcdr (list:List[Any], int:Int):List[Any]= int match
  {
  case 0 => list
  case _ => nthcdr (list.tail,(int -1))
  }

def merge (list_a:List[Any],list_b:List[Any]) = 
  {
  List.concat(list_a,list_b)
  }

def esFibonacciP (f:Int) =
  {
  isPerfectSquare (5*f*f+4) || isPerfectSquare (5*f*f-4)
  }

def isPerfectSquare (int:Int) =
  {
  val sq = scala.math.floor(scala.math.sqrt(int))
  sq*sq==int
  }


def fib( n : Int) : Int = n match 
  {
   case 0 | 1 => n
   case _ => fib( n-1 ) + fib( n-2 )
  }

// listaFibonaccis
// multiplMatricesInt
// reverseInt

def reverseInt (n:Int):Int=
  {
  if(n<0)
    n.abs.toString.reverse.toInt * -1
  else
    n.toString.reverse.toInt
  }
