collatz n
	| even n	= quot n 2
	| otherwise	= (3 * n) + 1

getChain n = (takeWhile (>1) (iterate collatz n)) ++ [1]

numberWithLength n = (length (getChain n), n)

answer = snd (maximum (map numberWithLength [1..999999]))