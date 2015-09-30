MergeSort::(Ord a) => [a] -> [a]
MergeSort [] = []
MergeSort [x] = [x]
MergeSort xs =  let mid =  (length xs) `div` 2 
				x = MergeSort (take mid xs)
				y =  MergeSort (drop mid xs)
				merge (x:xs) (y:ys) = case compare x y of GT -> y:merge (x:xs) ys
														  LT -> x:merge xs (y:ys)
														  EQ -> x:y:merge xs ys
				in  merge x y