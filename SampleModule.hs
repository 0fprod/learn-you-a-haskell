module SampleModule (getClass, doubleFn) where

getClass :: Int -> String
doubleFn :: Int -> Int
getClass x = "You passed " ++ show x

doubleFn x = x * 2