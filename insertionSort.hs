insertionSort::(Ord a)=> [a] -> [a]
insertionSort (x:[]) = [x]
insertionSort (x:xs) = let inserter x (y:xs) = case compare x y of GT-> y:inserter x xs
								   LT -> x:y:xs
							           EQ -> x:y:xs
			   inserter x [] = [x]
		       in inserter x (insertionSort xs)