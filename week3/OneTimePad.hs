module OneTimePad where

otp :: [Bool] -> [Bool] -> [Bool]
otp a b = map xor (zip a b)

xor t
 | (fst t) == True  = not (snd t)
 | (fst t) == False = snd t
