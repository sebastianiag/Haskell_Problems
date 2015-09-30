binarySearch:: (Ord a) => a-> [a] -> Int -> (Maybe Int)
binarySearch _ [] _ = Nothing
binarySearch x xs midi = let mid = (length xs) `div` 2
			in case compare x (xs!!mid) of GT -> binarySearch x (drop mid xs) (midi+mid)
						       LT -> binarySearch x (take mid xs) (midi-mid)
						       EQ -> Just mid