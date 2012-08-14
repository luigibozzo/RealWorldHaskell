
-- define a typeclass
class BasicEq a where
    isEqual :: a -> a -> Bool

-- ... and implement it
instance BasicEq Bool where
    isEqual True  True  = True
    isEqual False False = True
    isEqual _     _     = False
	

-- define a typeclass with default impl
class BasicEq3 a where
    isEqual3 :: a -> a -> Bool
    isEqual3 x y = not (isNotEqual3 x y)

    isNotEqual3 :: a -> a -> Bool
    isNotEqual3 x y = not (isEqual3 x y)
	
	
main = do
	putStrLn "RWH 06: using typeclasses"