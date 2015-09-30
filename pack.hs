pack :: (Eq a) => [a]-> [[a]]
pack xs =
    let compress [] = []
        compress (x:xs) =  x: compress  (filter (\y -> x /=y) xs)
    in  compress [[z | z<-xs, z == y]| y <-xs]