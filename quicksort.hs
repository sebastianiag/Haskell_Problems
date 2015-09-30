quicksort::(Ord a)->[a]->[a]
quicksort [] = []
quicksort (x:xs) = 
	let smallSort  = quicksort (filter (<=x) xs)
		bigSort  = quicksort (filter (>x) xs)
	in  smallSort  ++ [x] ++ bigSort  