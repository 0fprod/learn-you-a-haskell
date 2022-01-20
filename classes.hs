import System.IO

data ShirtSize = S | M | L

class MyEq a where
  areEqual :: a -> a -> Bool

instance MyEq ShirtSize where
  areEqual S S = True
  areEqual M M = True
  areEqual L L = True
  areEqual _ _ = False

-- do allow us to chain different things together
sayHello = do
  putStrLn "some msg"
  name <- getLine
  putStrLn $ "hello " ++ name