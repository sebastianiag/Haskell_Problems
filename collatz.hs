collatz = 

	let	chain 1 = [1]
		chain x
			| odd x = (3*x +1): chain (3*x+1)
			| otherwise = (div x 2) : chain (div x 2)
	in [x | x<-[1..100], (length (chain x)) > 15]