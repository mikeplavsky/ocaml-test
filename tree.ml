type 'a btree = 
  Leaf
  | Node of 'a * 'a btree * 'a btree

let rec cardinality = function 
  Leaf -> 0
  | Node(_,left,right) -> cardinality left + cardinality right + 1

let empty = Leaf

let rec insert x = function
  Leaf -> Node( x, Leaf, Leaf)
  | Node(y, left, right) as node ->
    if x < y then
      Node(y, insert x left, right)
    else if x > y then
      Node(y, left, insert x right)
    else 
      node

let rec set_of_list = function
  [] -> empty
  | h :: t -> insert h (set_of_list t)

let rec mem x = function 
  Leaf -> false
  | Node(y,left,right) -> x=y || (x < y && mem x left) || (x > y && mem x right)


