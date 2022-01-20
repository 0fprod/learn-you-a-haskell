import Data.List

-- Everything in haskell is inmutable
primeNumbers = [3, 5, 7, 11]

morePrime = primeNumbers ++ [13, 17, 19, 23, 29] -- concatenate lists

favNumbs = 2 : 7 : 21 : 66 : [] -- : operator join elements to a list

multiList = [[1, 2], [3, 4]]

favLenght = length favNumbs

reverseFav = reverse favNumbs

isEmpty = null favNumbs

isEmpty2 = null []

thirdItem = favNumbs !! 2 -- 0 based index, gets the element at index

firstPrime = head primeNumbers

lastPrime = last primeNumbers

initPrime = init primeNumbers

first3Primes = take 3 primeNumbers

removedPrimes = drop 2 primeNumbers

contains7 = 7 `elem` primeNumbers

maxPrime = maximum morePrime

zeroToTen = [0 .. 10]

evenList = [2, 4 .. 20]

letterList = ['A' .. 'Z']

infiniteList = [10, 20 ..]

many2 = take 10 (repeat 2)

many3 = replicate 3 10

cycleList = take 19 (cycle [1, 2, 3, 4, 5])

listTimes2 = [x * 2 | x <- [1 .. 10]] -- [operacion | valorTemporal <- Lista] = por cada elemento de la lista se guarda en una variable temporal y se le aplica cierta operacion

filteredListTimes3 = [x * 3 | x <- [1 .. 10], x * 3 <= 20] -- Idem, pero filtra aquellos elemento que cumplan la condición - se pueden añadir mas filtros que son OR

sortedList = sort [1, 2, 4, 57]

sumOflist = zipWith (+) [1, 2, 3] [2, 3, 5]

listBiggerThan5 = filter (> 5) primeNumbers

evensUpTo20 = takeWhile (<= 20) [2, 4 ..]

multiplicationTable = [[x * y | x <- [0 .. 10]] | y <- [0 .. 10]]

-- TUPLES

randTuple = (1, "whatever")

bobSmith = ("Bob Smith", 52)

bobName = fst bobSmith -- fst=first

bobAge = snd bobSmith -- snd = second

names = ["Bob", "Mary"]

addresses = ["123 Main", "234 North"]

namesNAndress = zip names addresses