(* Find out whether a list is a palindrome *)

(* From problem solution 05 *)
let rev (xs : 'a list) : 'a list =
  let rec rev' (xs : 'a list) (acc : 'a list) =
    match xs with [] -> acc | head :: tail -> rev' tail (head :: acc)
  in
  rev' xs []

let is_palindrome (xs : 'a list) : bool = if xs = rev xs then true else false
