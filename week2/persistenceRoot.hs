module PersistenceRoot where

persistenceRoot :: Integer -> Integer -> (Integer, Integer)
persistenceRoot x n
 | x < 10    = (x, n)
 | otherwise = persistenceRoot (product (digs x)) (n+1)


digs :: Integer -> [Integer]
digs 0 = []
digs x = digs (div x 10) ++ [mod x 10]


-- main :: IO ()
-- main = do
--   putStrLn "Compute Persistence Root of:"
--   inp <- getLine
--   let x = read inp :: Integer
--   putStrLn (show (persistenceRoot x 1)) >> main
