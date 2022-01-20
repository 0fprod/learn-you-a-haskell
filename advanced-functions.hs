import Data.List
import System.IO

getFirstItem :: String -> String
getFirstItem [] = "Empty string"
getFirstItem all@(x : xs) = "The first in '" ++ all ++ "' is " ++ " and the first letter is " ++ show x ++ " and the rest are " ++ show xs

-- High order functions

times4 :: Int -> Int
times4 x = x * 4

listTimes4 = map times4 [1, 2, 3, 4, 5]

areStringsEq :: [Char] -> [Char] -> Bool
areStringsEq [] [] = True
areStringsEq (x : xs) (y : ys) = x == y && areStringsEq xs ys
areStringsEq _ _ = False

-- pass function as parameters
doMult :: (Int -> Int) -> Int
doMult func = func 3

num3Times4 = doMult times4

-- return functions
getAddFunc :: Int -> (Int -> Int)
getAddFunc x y = x + y

adds3 = getAddFunc 3

fourPlus3 = adds3 4

-- Lambda functions is a way to create functions that dont have a name

double1To10 = map (\x -> x * 2) [1 .. 10]

double1To10' = map (* 2) [1 .. 10]