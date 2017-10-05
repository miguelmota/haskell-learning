# chapter 02

> Syntax in Functions

## Notes

```haskell
-- pattern matching: specify patterns to which some data
-- should conform and to deconstruct the data according
-- to those patterns

ghci> :{
Prelude| lucky :: Int -> String
Prelude| lucky 7 = "LUCKY NUMBER SEVEN!"
Prelude| lucky x = "Sorry, you're out of luck, pal!"
Prelude| :}
ghci> lucky 2
-- "Sorry, you're out of luck, pal!"
ghci> lucky 7
-- "LUCKY NUMBER SEVEN!"

-- patterns are checked from top to bottom


ghci> :{
Prelude| factorial :: Int -> Int
Prelude| factorial 0 = 1
Prelude| factorial n = n * factorial (n -1)
Prelude| :}
ghci> factorial 5
-- 120
```
