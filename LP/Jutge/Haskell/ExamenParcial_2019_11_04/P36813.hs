import Data.List

degree :: Eq a => [(a, a)] -> a -> Int

degree [] _ = 0
degree ((a,b):ls) n
    | n == a || n == b = 1 + degree ls n
    |otherwise = degree ls n


degree' :: Eq a => [(a, a)] -> a -> Int

degree' ls n = length [x | x <- ls, (fst x == n) || (snd x == n)]


nNeighbor :: Eq a=> (a,a) -> a -> a

nNeighbor (a,b) c
    | a == c = b
    | otherwise = a

neighbors :: Ord a => [(a, a)] -> a -> [a]

neighbors ls n = sort [nNeighbor x n | x <- ls, (fst x == n) || (snd x == n)]
