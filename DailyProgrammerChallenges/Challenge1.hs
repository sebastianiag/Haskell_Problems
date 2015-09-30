main = do
		putStrLn "Gimmeeh name\n"
		name <- getLine
		putStrLn "Gimmeeh age\n"
		age <- getLine
		putStrLn "Gimmeeh Reddit username\n"
		username <- getLine
		putStrLn ("Your name is"++name ++" and you are "++ age ++ " and username is "++ username ++"\n")
		