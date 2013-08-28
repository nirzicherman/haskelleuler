numSum = floor (sum [x**2 | x <- [1..100]])
numProduct = floor((sum [1..100])**2)

answer = numProduct - numSum