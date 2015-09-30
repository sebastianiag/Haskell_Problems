myReverse:: [a] -> [a]
myReverse [] = []
myReverse (x:xs) =
	let sub = [x]
	in
		myReverse xs ++ sub