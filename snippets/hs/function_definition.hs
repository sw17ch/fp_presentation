-- Function definition
add a b = a + b

-- Partial Application
addOne = add 1 -- addOne is a new function!

-- Pattern Matching
toWords 0 = "Zero"
toWords 1 = "One"

-- Capture a match
lucky 7 = "Lucky number 7!"
lucky x = "Sorry, " ++ (show x) ++ " isn't lucky."

