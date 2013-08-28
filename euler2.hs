fib xs = xs ++ [((last (init xs)) + (last xs))] 
allFibLists = iterate fib [1,1]
allFibNums = 1 : map last allFibLists
allFibNumsLessThan4000000 = takeWhile (<4000000) allFibNums

answer = sum [x | x <- allFibNumsLessThan4000000, x `mod` 2 == 0]