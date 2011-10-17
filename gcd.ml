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

