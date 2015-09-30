mergeSort::(Ord a) => [a] -> [a]
mergeSort [] = []
mergeSort (x:[]) = [x]
mergeSort xs = let mid = length xs `div` 2
		   lowerHalf = mergeSort (take mid xs)
		   higherHalf =  mergeSort (drop mid xs)
		   merger [] ys = ys
		   merger xs [] = xs
		   merger (x:xs) (y:ys) = case compare x y of GT -> y:merger (x:xs) ys
				   			      LT -> x:merger xs (y:ys)
				   			      EQ -> x:y:merger xs ys
		   in merger lowerHalf higherHalf