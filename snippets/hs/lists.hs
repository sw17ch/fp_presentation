-- Lists instead of arrays
x = [1, 2, 3]

-- List comprehensions
y = [1..3]
allPositive = [1..] -- infinite!
allPositiveEvens = [x | x `div` 2 == 0] -- expressive!
fibonacci = 0 : 1 : zipWith (+) fibs (tail fibs)

-- Matching a list
head (x:xs) = x
tail (x:xs) = xs

head [1, 2, 3] -- 1
tail [1, 2, 3] -- [2, 3]
