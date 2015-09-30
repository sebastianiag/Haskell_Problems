bmiTell weight height
	| bmi <= 18.5 = "You're underweight"
	| bmi <= 25.0 = "You're normal"
	| bmi <= 30.0 = "You're a whale"
	| otherwise = "Fucking whale!"
	where bmi = weight/height ^2