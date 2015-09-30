compress::(Eq a)=>[a] ->[a]
compress [] = []
compress (x:xs) = x:compress (filter (\y -> y /= x) xs)