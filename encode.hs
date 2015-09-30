enconde:: (Eq a)=> [a] -> [[a]]
encode xs = 
	let compress [] = []
        compress (x:xs) =  x: compress (filter (\y -> x /=y) xs)
    	pack xs = compress [[z | z<-xs, z == y]| y <-xs]
    in zip (map length (pack xs)) (compress xs) 