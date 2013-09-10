next arr = zipWith (+) ((map (\x -> (2 * x) `quot` 10) arr) ++ [0]) (0 : (map (\x -> (2 * x) `mod` 10) arr))

answer = sum $ last $ take 1000 $ iterate next [2]