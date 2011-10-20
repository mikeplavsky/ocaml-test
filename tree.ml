type 'a btree = 
  Leaf
  | Node of 'a * 'a btree * 'a btree

let rec cardinality = function 
  Leaf -> 0
  | Node(_,left,right) -> cardinality left + cardinality right + 1

let empty = Leaf

let insert x s = Node( x, Leaf, s)

let rec set_of_list = function
  [] -> empty
  | h :: t -> insert h (set_of_list t)


let rec mem x = function 
  Leaf -> false
  | Node(y,left,right) -> x=y || mem x left || mem x right


