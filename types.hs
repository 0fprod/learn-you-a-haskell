import Data.List
import System.IO
import System.Win32 (COORD (y))

-- ENUMS
data BaseballPlayer
  = Pitcher
  | Catcher
  | CenterField
  deriving (Show)

mikePiazza :: BaseballPlayer -> Bool
mikePiazza CenterField = True
mikePiazza _ = False

mikePiazzaCF = print (mikePiazza CenterField)

mikePiazzaP = print (mikePiazza Pitcher)

-- CUSTOM TYPES

data Customer = Customer String String Double
  deriving (Show)

tomSmith :: Customer
tomSmith = Customer "Tom" "Tom address" 100.5

getBalance :: Customer -> Double
getBalance (Customer _ _ balance) = balance

data PiedraPapelTijeras = Piedra | Papel | Tijeras

ronda :: PiedraPapelTijeras -> PiedraPapelTijeras -> String
ronda Piedra Papel = "Paper wins"
ronda Piedra Tijeras = "Piedra wins"
ronda Papel Tijeras = "Tijera wins"
ronda Papel Piedra = "Paper wins"
ronda Tijeras Papel = "Tijera wins"
ronda Tijeras Piedra = "Piedra wins"
ronda _ _ = "saroto"

data MultiType = TypeA Int Int | TypeB Int Int
  deriving (Show)

someFn :: MultiType -> Int
someFn (TypeA x y) = x + y
someFn (TypeB x y) = x - y

-- el $ significa que lo que viene viene envuelto entre parentesis
callTypeA = someFn (TypeA 4 3)

-- El punto nos sirve para concatenar outputs como inputs
sumValue = putStrLn . show $ 1 + 6

callTypeB = someFn $ TypeB 4 3

-- Data types
data Human = Human
  { name :: String,
    age :: Int,
    balance :: Double
  }
  deriving (Eq, Show) -- con esto habilitamos el uso de esos metodos sobre la clase Human

mikeMorales = Human {name = "Mike Morales", age = 47, balance = 180.51}

joeJimenez = Human {name = "Joe Jimenez", age = 31, balance = 205.13}

joeJimenez' = Human {name = "Joe Jimenez", age = 31, balance = 205.13}

isMikeJoe = mikeMorales == joeJimenez

isJoeJoe = joeJimenez == joeJimenez

isJoeJoe' = joeJimenez == joeJimenez'

-- override eq Behaviour
data ShirtSize = S | M | L

instance Eq ShirtSize where
  S == S = True
  M == M = True
  L == L = True
  _ == _ = False

instance Show ShirtSize where
  show S = "Its smol"
  show M = "its mid"
  show L = "fatboy"
