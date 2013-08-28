isPrime :: (Integral a) => a -> Bool
isPrime 2 = True
isPrime n = length ([x | x <- (2 : [3,5..(floor (sqrt (fromIntegral n)))]), n `mod` x == 0]) == 0

firstPrimes = filter isPrime [1..20]
minStep = product firstPrimes
steps = [minStep, (minStep*2)..]
isDivisible n = all (\x -> n `mod` x == 0) [1..20]
divisibleNumbers = filter isDivisible steps

answer = head divisibleNumbers