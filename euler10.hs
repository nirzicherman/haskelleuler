isDiv :: (Integral a) => a -> a -> Bool
isDiv n x = (n `mod` x) == 0

isPrime :: (Integral a) => a -> Bool
isPrime 2 = True
isPrime n = not (any (isDiv n) (2 : [3,5..(floor (sqrt (fromIntegral n)))]))

primes = [x | x <- (2 : [3,5..2000000]), isPrime x]
answer = sum primes