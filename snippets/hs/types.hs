-- Type Signatures
1       :: Int
"Hello" :: String
'a'     :: Char
0.9     :: Double

-- Function signatures
add :: Int -> Int -> Int

-- Type inference!
one :: Int
one = 1

subtractOne a = a - one -- Inferred type: (Int -> Int)

-- Partial Application
(add 1) :: Int -> Int
