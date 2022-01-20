import Data.List
import Distribution.Simple (absolutePackageDBPaths)
import System.IO

isOdd :: Int -> Bool
isOdd n -- if N is event return false if not True
  | even n = False
  | otherwise = True

whatGrade :: Int -> String
whatGrade age
  | (age >= 5) && (age <= 6) = "KinderGarten"
  | (age > 6) && (age <= 10) = "Elementary School"
  | (age > 10) && (age <= 14) = "Middle School"
  | (age > 14) && (age <= 18) = "High School"
  | otherwise = "Go to work"

batAvgRating :: Double -> Double -> String
batAvgRating hits atBats
  | avg <= 0.200 = "Eres un paquete"
  | avg <= 0.250 = "Mediocre"
  | otherwise = "Tesaliste"
  where
    avg = hits / atBats

getListItems :: [Int] -> String
getListItems [] = "Lista vacia"
getListItems (x : []) = "El primero es" ++ show x
getListItems (x : xs) = "vamos a tope" ++ show x ++ " y luego " ++ show xs -- x es el primero y el resto es xs