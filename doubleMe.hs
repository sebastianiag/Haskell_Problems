doubleMe x = x + x 

doubleUs x y = (doubleMe x) + (doubleMe y)

doubleSmallNumber x= if x> 100
					   then x
					   else doubleMe x
boomBang xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

sumer xs = if null xs
			then 0
			else head xs + sumer (tail xs)