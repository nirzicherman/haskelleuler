isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome n = reverse n == n

products = [a * b | a <- [111..999], b <- [111..999], isPalindrome (show(a * b))]
largest = maximum products

answer = largest