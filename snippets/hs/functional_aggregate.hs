sum :: [Int] -> Int
sum []     = 0
sum (x:xs) = x + (sum xs)

product :: [Int] -> Int
product []     = 1
product (x:xs) = x * (product xs)

-- abstract out common functionality
fold :: (Int -> Int -> Int) -> Int -> Int -> Int
fold f a []     = a
fold f a (x:xs) = f x (fold f a xs)

sum values = fold (+) 0 values
product values = fold (*) 1 values
