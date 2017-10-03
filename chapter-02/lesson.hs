-- find type
:t 'A'
-- 'A' :: Char


:t True
-- True :: Bool

t "hello"
-- "hello" :: [Char]

:t (True, 4)
-- (True, 4) :: Num b => (Bool, b)

-- :: means "has type of"


-- specify types for function
ghci> :{
Prelude| addThree :: Int -> Int -> Int -> Int
Prelude| addThree x y z = x + y + z
Prelude| :}
ghci> addThree 5 6 1
-- 12
