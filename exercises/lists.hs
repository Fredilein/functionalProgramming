-- last :: [a] -> a
-- last a 
 -- | head a == tail a = head a
 -- | otherwise              = Main.last (tail a)


length [] = 0
length a = Main.length (tail a) + 1
