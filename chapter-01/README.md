# chapter 01

> Starting Out

Install on MacOS

```bash
brew install ghc cabal-install
```

Interative prompt

```bash
ghci
```

## Notes

```haskell
5 * 5
-- infix function

5 * (-3)

True == True

True /= True
-- false

True /= False
-- true

"hello" == "hello"

succ 8
-- 9
-- postfix function

min 9 5.3
-- 5.3

succ 9 + max 5 4 + 1
-- 16

(succ 9) + (max 5 4) + 1
-- 16

succ 4 * 3
-- 15

succ (4 * 3)
-- 13

-- call it as an infix function, use backticks
8 `min` 10

--  8
92 `div` 10
-- 9

doubleMe x = x + x
doubleMe 5
-- 10

doubleUs x y = x * 2 + y * 2
doubleUs 4 9
-- 26

-- else part is mandatory
doubleSmallNumber x = if x > 100 then x else x * 2
doubleSmallNumber 4
-- 8
doubleSmallNumber 200
-- 200

-- haskell functions must always return a value
-- haskell functions can't begin with capital letters

-- apostrophes in function names are ok and have no special meaning, sometimes used to denote strict (non-lazy) functions

-- list
let numbers = [34,5,2]

-- concatenate
++

"hello" ++ "world"
-- "helloworld"
['w','o'] ++ ['o','t']
-- "woot"

-- strings are list of characters

-- "cons" operator, used for prepending
:

'A':" cat"
-- "A cat"

5:[1,2]
-- [5,1,2]


1:2:3:[] == [1,2,3]
-- True

-- access item at index
"hello world" !! 4
-- 'o'

-- lists are campared by value


-- first
head [4,6,3]
-- 4

-- everything but head
tail [4,6,3]
-- [6,3]

last [4,6,3]
-- 3

-- everything but last
init [4,6,3]
-- [4,6]

length [4,6,3]
-- 3

-- check if empty
null [4,6,3]
-- False
null []
-- True

reverse [4,6,3]
-- [3,6,4]


ghci> take 2 [4,6,3]
[4,6]

-- drop from beginning
drop 2 [4,6,3]
-- [3]

maximum [4,6,3]
-- 6

minimum [4,6,3]
-- 3

sum [4,6,3]
-- 13

product [4,6,3]
-- 72

-- check if list has element
6 `elem` [4,6,3]
-- True

-- range
[1..10]
-- [1,2,3,4,5,6,7,8,9,10]

['a'..'e']
-- "abcde"

-- step
-- every 3rd number
[1,3..10]
-- [1,3,5,7,9]

[10,9..1]
-- [10,9,8,7,6,5,4,3,2,1]

-- infinite
take 5 [1,2..]
-- [1,2,3,4,5]

-- cycle takes list and replicates elements indefinitely, make sure to slice it somewhere
take 12 (cycle "lol ")
-- "lol lol lol "

take 3 (repeat "lol ")
-- ["lol ","lol ","lol "]

replicate 3 10
-- [10,10,10]


-- list comprehension
-- right part means x is drawn from the numbers (range in this caes)
-- left part (|) is the output of the list comprehension

[x | x <- [1..10]]
-- [1,2,3,4,5,6,7,8,9,10]

-- double range
[x*2 | x <- [1..10]]
-- [2,4,6,8,10,12,14,16,18,20]

-- right most side is predicate, in this case numbers that
-- are larger than 12
[x*2 | x <- [1..10], x*2 >= 12]
-- [12,14,16,18,20]

-- numbers that when divided by 7 is 3
[x | x <- [50..100], x `mod` 7 == 3]
-- [52,59,66,73,80,87,94]


boomBang xs = [if x > 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
boomBang [7..13]
-- ["BANG!","BANG!","BOOM!","BOOM!"]

-- can have multiple predicates
[x | x <- [10..20], x /= 13, x /= 15, x /= 19]
-- [10,11,12,14,16,17,18,20]

-- draw from multiple lists
[x+y | x <- [1,2,3], y <- [10,100,1000]]
-- [11,101,1001,12,102,1002,13,103,1003]

-- our own length function which converts each item to 1
-- then sums
length' xs = sum [1 | _ <- xs]
length' [5, 7, 2]
-- 3

removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]
removeNonUppercase "Hahaha! Ahahaha!"
-- "HA"

-- tuples
(1,3)
-- (1,3)

(1, "foo", True)
-- (1,"foo",True)

-- only work with pairs
-- first
fst (5,3)
-- 5

-- second
snd (5,3)
-- 3

zip [1,2,3,4,5] [5,5,5,5,5]
-- [(1,5),(2,5),(3,5),(4,5),(5,5)]

-- right triangles
let rightTriangles' = [ (a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2, a+b+c == 24]
rightTriangles'
-- [(6,8,10)]
```
