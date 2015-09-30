linearSearch:: (Eq a) => a -> [a] -> Int
linearSearch _ [] = error "Does not exist"
linearSearch x (y:xs) =  if x == y then  0
						 else 1+ linearSearch x xs