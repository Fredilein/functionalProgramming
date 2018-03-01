import Data.List

oddSum a b c d e = lst !! 0 + lst !! 2 + lst !! 4
  where lst = sort [a,b,c,d,e]
