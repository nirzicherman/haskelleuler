isPrime :: (Integral a) => a -> Bool
isPrime 2 = True
isPrime n = length ([x | x <- (2 : [3,5..(floor (sqrt (fromIntegral n)))]), n `mod` x == 0]) == 0

largestPrimeFactor :: (Integral a) => a -> a
largestPrimeFactor n = head [x | x <- [(floor (sqrt (fromIntegral n))), (floor (sqrt (fromIntegral n))-1)..2], n `mod` x == 0 && isPrime x]

answer = largestPrimeFactor 600851475143 