import GHC.Base (VecElem (Int16ElemRep))

-- Inline comments
{-
Multiline comments
-}

maxInt = maxBound :: Int -- name = func :: type

minInt = minBound :: Int

-- Types
-- Float
-- Double
-- Int
-- Integer
-- Bool True False
-- Char '
-- Tuple

-- constant
always5 :: Int
always5 = 5

-- Math functions
sumOfNums = sum [1 .. 1000] -- creates a list from 1 up to 1000

addExample = 5 + 4 -- - / * as always these operators are called INFIX operators

subExample = 5 + (-4) -- negative numbers must be wrapped with its sign

number9 = 9 :: Int

sqrtOf9 = sqrt (fromIntegral number9)

{-
  We also have built it math functions like
  pi, exp, log, ** (powerTo), truncate, round, ceiling, floor, sin, cost
  tan, asin, atan, acis, sinh, tanh, cosh, asn¡inh, atanh, acosh
-}

trueAndFalse = True && False

trueOrFalse = True || False

notTrue = not (True)
