import Data.List
import System.IO

-- type declaration
-- functionName :: param1 type --> param2 type --> return type
addMe :: Int -> Int -> Int
addMe x y = x + y

sum3N4 = addMe 3 4

whatAge :: Int -> String
whatAge 18 = "Hoorray!"
whatAge 30 = "Time flies"
whatAge _ = "Bah"

-- recursion
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n -1)