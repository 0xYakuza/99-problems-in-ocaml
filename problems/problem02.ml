(* Find the last but one (last and penultimate) elements of a list *)

let rec last_two (xs : 'a list) : ('a * 'a) option =
  match xs with
  | [] -> None
  | [ x; y ] -> Some (x, y)
  | _ :: last -> last_two last
