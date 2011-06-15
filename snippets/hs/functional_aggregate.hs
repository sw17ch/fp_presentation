sum :: [Int] -> Int
sum []     = 0
sum (x:xs) = x + (sum xs)

product :: [Int] -> Int
product []     = 1
product (x:xs) = x * (product xs)

fold :: (a -> b -> b) -> b -> a -> b
fold f a []     = a
fold f a (x:xs) = f x (fold f a xs)
