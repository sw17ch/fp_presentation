addOne :: [Int] -> [Int]
addOne [] = []
addOne (x:xs) = (1 + x) : (addOne xs)

addTwo :: [Int] -> [Int]
addTwo [] = []
addTwo (x:xs) = (2 + x) : (addTwo xs)

-- abstract out common functionality
map :: (Int -> Int) -> [Int] -> [Int]
map f []     = []
map f (a:as) = (f a) : (map f as)

addOne values = map (+ 1) values
addTwo values = map (+ 2) values
