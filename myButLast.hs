myButLast::(Ord a)=> [a]  -> a
myButLast [x] = x
myButLast (x:xs)=
	if length xs == 1
		then x
		else myButLast xs