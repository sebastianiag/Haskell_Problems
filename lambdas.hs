maximum':: (Ord a )=> [a] -> a
maximum' =  foldr1 (\acc x -> if x > acc then x else acc ) 

reverse' xs =  foldl (\acc x-> x:acc) [] xs

product' = foldr1 (*)
