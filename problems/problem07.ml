(* Flatten a nested list structure *)

type 'a node = One of 'a | Many of 'a node list

let flatten (xs : 'a node list) : 'a list =
  let rec flatten' (xs : 'a node list) (acc : 'a list) : 'a list =
    match xs with
    | [] -> acc
    | head :: rest ->
        flatten' rest
          (match head with Many x -> flatten' x acc | One o -> acc @ [ o ])
  in
  flatten' xs []
