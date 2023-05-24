(* Find the number of elements of a list *)

let rec length (xs : 'a list) : int =
  match xs with [] -> 0 | _ :: rest -> 1 + length rest
