import Data.List

factors :: Integer -> [Integer]
factors 1 = [1]
factors n = concat [[f, quot n f] | f <- [1..(floor (sqrt (fromIntegral n)))], n `mod` f == 0]

triangles = scanl (+) 1 [2..]

triangleFactors = map factors triangles

Just value = Data.List.find (\x -> length x > 500) triangleFactors
answer = maximum value