eval1 :: String -> Int

eval1 xs = eval1' [] (words xs)
    where   eval1' :: [Int] -> [String] -> Int
            eval1' [x] [] = x
            eval1' (a:b:nL) (s:sL)
                | s == "+" = eval1' ((b+a):nL) sL
                | s == "-" = eval1' ((b-a):nL) sL
                | s == "*" = eval1' ((b*a):nL) sL
                | s == "/" = eval1' ((div b a):nL) sL
                | otherwise = eval1' ((read s::Int):a:b:nL) sL
            eval1' nL (s:sL) = eval1' ((read s::Int):nL) sL


eval2' :: [Int] -> String -> [Int]

eval2' (a:b:l) s
    | s == "+" = ((b+a):l)
    | s == "-" = ((b-a):l)
    | s == "*" = ((b*a):l)
    | s == "/" = ((div b a):l)
    | otherwise = ((read s::Int):a:b:l)
eval2' l s = ((read s::Int):l)

eval2 :: String -> Int

eval2 xs = head (foldl eval2' [] (words xs))


fsmap :: a -> [a -> a] -> a

fsmap x lF = foldl (\x f -> f x) x lF


data Racional = Racional Integer Integer deriving (Eq)

racional :: Integer -> Integer -> Racional
racional n d = (Racional (div n g) (div d g))
    where g = gcd n d

numerador :: Racional -> Integer
numerador (Racional n d) = n

denominador :: Racional -> Integer
denominador (Racional n d) = d

instance Show Racional where
    show (Racional n d) = show n ++ "/" ++ show d



data Tree a = Node a (Tree a) (Tree a)

recXnivells :: Tree a -> [a]
recXnivells t = recXnivells' [t]
    where recXnivells' ((Node x fe fd):ts) = x:recXnivells' (ts ++ [fe, fd])


racionalsTree :: Racional -> Tree Racional

racionalsTree (Racional a b) = Node (Racional a b) (racionalsTree (Racional a (a+b))) (racionalsTree (Racional (a+b) b))


racionals :: [Racional]

racionals = recXnivells (racionalsTree (Racional 1 1))
