isPrime :: (Integral a) => a -> Bool
isPrime 2 = True
isPrime n = length ([x | x <- (2 : [3,5..(floor (sqrt (fromIntegral n)))]), n `mod` x == 0]) == 0

primes = filter isPrime (2:[3,5..])
lastPrime = last (take 10001 primes)

answer = lastPrime