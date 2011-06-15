addOne :: [Int] -> [Int]
addOne [] = []
addOne (x:xs) = (1 + x) : (addOne xs)

addTwo :: [Int] -> [Int]
addTwo [] = []
addTwo (x:xs) = (2 + x) : (addTwo xs)

map :: (a -> b) -> [a] -> [b]
map f []     = []
map f (a:as) = (f a) : (map f as)
