# Chapter 2

> "Believe the Type"

## Notes

```haskell
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


ghci> :{
Prelude| circumference :: Float -> Float
Prelude| circumference r = 2 *pi *r
Prelude| :}
ghci> circumference 4.0
-- 25.132742

-- type variables
:t head
-- head :: [a] -> a

:t fst
-- fst :: (a, b) -> a

:t (==)
-- (==) :: Eq a => a -> a -> Bool

5 `compare` 3
-- GT

-- represent as string
show 3
-- "3"

-- opposite of show
read "5" - 2
-- 3

-- type annotations
read "5" :: Int
-- 5

read "[2,3]" :: [Int]
-- [2,3]

minBound :: Int
-- -9223372036854775808

maxBound :: Int
-- 9223372036854775807

-- fromIntegral makes integral and floating-point number
-- work nicely together. Otherwise you can an error.
fromIntegral (length [1,2,3,4]) + 3.2
-- 7.2
```
