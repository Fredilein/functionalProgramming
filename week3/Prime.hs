-- (a) Use list comprehension to turn this definition into an executable primality test.
getDivs :: Int -> [Int]
getDivs n = [ x | x <- [1..n], (n `mod` x) == 0 ]

isPrime x = (length (getDivs x) == 2)


-- (b) Write a function that returns the list of all primes up to a given number m.
getPrimes :: Int -> [Int]
getPrimes 0 = [] 
getPrimes m
 | isPrime m = m : getPrimes (m-1)
 | otherwise = getPrimes (m-1)


-- (c) Write a function that returns the list of the first m primes.
getMPrimes :: Int -> [Int]
getMPrimes 0 = []
getMPrimes m = searchPrimes m 1

searchPrimes :: Int -> Int -> [Int]
searchPrimes m i
 | length primes >= m = primes
 | otherwise          = searchPrimes m (i+1)
 where
  primes = getPrimes i

