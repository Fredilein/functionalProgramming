 ---- Some examples

--- renamed as "gcd" already taken in Prelude
gcdiv :: Int -> Int -> Int
gcdiv x y                         
 | x == y      = x
 | y > x       = gcdiv x (y-x)
 | otherwise   = gcdiv (x-y) y

gcint :: Int -> Int -> Int
gcint x y = gcdiv (abs x) (abs y)

xor True  y = not y
xor False y = y

dups n s
  | n == 0 = ""
  | n >  0 = s ++ (dups (n-1) s)
  
silly b (x,y)
  | b         = x + y
  | otherwise = x * y

fac 0 = 1
fac n = n * fac (n-1)
