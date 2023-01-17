class MyEq a where
    (==) :: a -> a -> Bool
    (/=) :: a -> a -> Bool
    x == y = not (x /= y)
    x /= y = not (x == y)

data MyInt = MyInt Int
data MyFloat = MyFloat Float

instance MyEq MyInt where
    (MyInt x) == (MyInt y) = x == y
    (MyInt x) /= (MyInt y) = x /= y

instance MyEq MyFloat where
    (MyFloat x) == (MyFloat y) = x == y
    (MyFloat x) /= (MyFloat y) = x /= y

isEqual :: MyEq a => a -> a -> Bool
isEqual x y = x == y

/