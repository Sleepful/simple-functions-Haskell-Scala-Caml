main = do putStrLn "Utilice la linea de comando para probar las funciones :-)\n merge\n nthcdr\n esFibonacciP\n listaFibonaccis\n multiplMatricesInt\n reverseInt\np.s. para usar numeros negativos en el reverseInt es necesario especificarolos entre parentesis asi: reverseInt (-342)"

nthcdr list cdr
  | cdr == 0 = list
  | otherwise = nthcdr (tail list) $ cdr - 1


merge list1 list2
  = list1 ++ list2

esFibonacciP f =
  isPerfectSquare (5*f*f+4) || isPerfectSquare (5*f*f-4)
  

isPerfectSquare num 
  = sq * sq == num
  where sq = floor $ sqrt $ (fromIntegral num::Double)

listaFibonaccis int
  = do listaFibonaccisAux int 0

listaFibonaccisAux int n
  | int > fibby = [fibby] ++ listaFibonaccisAux int (n+1)
  | otherwise = [fibby] 
  where fibby = fib n

fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

multiplMatricesInt matrixA matrixB
  = mult_m_r matrixA matrixB 0

mult_m_r m_A m_B row_i 
  | row_i < length m_A 
    = [map (multLists (m_A!!row_i)) (get_cols m_B 0)]
    ++ mult_m_r m_A m_B (row_i + 1)
  | otherwise = []

get_cols m_B n
  | n < length (m_B!!n) = [get_col_i n m_B] ++ get_cols m_B (n+1)
  | otherwise = []

get_col_i col_i m_B 
  = map (!! col_i) m_B

multLists listA listB
  = sum $ zipWith (*) listA listB 

reverseInt :: Integer -> Integer
reverseInt x = (*) (signum x) . read . reverse . show . abs  $ x
