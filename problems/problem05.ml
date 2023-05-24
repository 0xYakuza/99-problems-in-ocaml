(* Reverse a list *)
(* [1; 2; 3] -> [3; 2; 1] ;*)

let rev (xs : 'a list) : 'a list =
  let rec rev' (xs : 'a list) (acc : 'a list) =
    match xs with [] -> acc | head :: tail -> rev' tail (head :: acc)
  in
  rev' xs []
