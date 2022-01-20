{-
  Comparsion operators
  <
  >
  <=
  >=
  ==
  /=
  &&
  ||
-}

lessThanFiveDouble y =
  if y < 5
    then y
    else y * 2 -- siempre else es necesario

getClass :: Int -> String
getClass n = case n of
  5 -> "five case"
  6 -> "six case"
  _ -> "default"