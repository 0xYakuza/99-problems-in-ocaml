(* My version *)
let last (xs : 'a list) : 'a option =
  match xs with
  | [] -> None
  | [ x ] -> Some x
  | _ ->
      let len = List.length xs in
      let last = List.nth xs (len - 1) in
      Some last

(* Recursive version *)
let rec last_req (xs : 'a list) : 'a option =
  match xs with [] -> None | [ x ] -> Some x | _ :: rest -> last_req rest
