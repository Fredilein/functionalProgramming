module SquareRoot where

-- write your implementation of the square root here

root :: Double -> Double -> Double
root x yi
 | (goodEnough yi newy) = yi
 | otherwise         = root x newy
 where newy = improve x yi

improve :: Double -> Double -> Double
improve x yn = (yn + x/yn)/2

goodEnough :: Double -> Double -> Bool
goodEnough y yp
 | abs ((y-yp)/yp) <= eps = True
 | otherwise              = False
 where eps = 0.001
 

main :: IO ()
main = undefined
