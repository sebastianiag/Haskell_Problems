elementAt:: [a]-> Int -> a
elementAt [] _ = error "Index out of Bounds"
elementAt (x:xs) k =
	if k <=0
		then error "Index out of Bounds"
		else 
			if k == 1
				then x
				else elementAt xs (k-1)