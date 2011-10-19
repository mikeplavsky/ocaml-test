let rec gcd a b =
  let r = a mod b in
  if r = 0 then
    b
  else 
    gcd b r

let rec assoc key = function
  (key2,value) :: l -> 
    if key2 = key then
      value
    else 
      assoc key l
  | [] -> raise Not_found;;

let rec fact1 i = 
  if i = 0 then
    1
  else 
    i * fact1 (i-1)

let fact2 i = 
  let rec loop accum i =
    if i=0 then
      accum
    else 
      loop (i*accum) (i-1)
  in loop 1 i 

let rec map f = function
  h :: t -> f h :: map f t
  | [] -> []

let rec rev_map accum f = function
  h :: t -> rev_map (f h :: accum) f t
  | [] -> accum

let rec rev accum = function 
  h :: t -> rev (h :: accum ) t
  | [] -> accum

let map1 f l = rev [] (rev_map [] f l) 

let rec  rev accum = function
  h :: t -> rev (h :: accum) t
  | [] -> accum

let head = function
  h :: t -> h
  | [] -> raise Not_found

let tail = function 
  h :: t -> t
  | [] -> raise Not_found










