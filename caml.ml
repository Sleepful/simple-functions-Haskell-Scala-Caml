let rec nthcdr int_t list_t =
  match int_t with
  | 0 -> list_t 
  | _ -> (match list_t with
          | h::tail -> nthcdr (int_t -1) tail
          | [] -> [] )
  ;;

let rec merge lista listb =
  match lista with
  | head::tail -> head::(merge tail listb)
  | [] -> 
    match listb with
    | [] -> []
    | head::tail -> head::(merge lista tail)
  ;;


let isPerfectSquare n = 
  let f = floor(sqrt(float_of_int n)) in
    eq_float (f *. f ) (float_of_int n);;

let esFibonacciP n =
  isPerfectSquare (5*n*n+4) || isPerfectSquare (5*n*n+4);;
