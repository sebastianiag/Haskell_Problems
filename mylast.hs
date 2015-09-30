mylast::(Ord a) =>[a] -> a
mylast [x]  = x
mylast (_:xs) = mylast xs