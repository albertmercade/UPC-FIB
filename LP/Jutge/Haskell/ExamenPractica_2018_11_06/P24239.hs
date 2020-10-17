val :: Char -> Int

val 'M' = 1000
val 'D' = 500
val 'C' = 100
val 'L' = 50
val 'X' = 10
val 'V' = 5
val 'I' = 1


roman2int :: String -> Int

roman2int [n] = val n
roman2int (x:xs)
    | val x >= val (head xs) = val x + roman2int xs
    | otherwise = -(val x) + roman2int xs



roman2int' :: String -> Int

roman2int' (x:xs) = foldl (\x y -> if mod x y == 0 then x + y else x - 2*(mod x y) + y) (val x) (map val xs)


arrels :: Float -> [Float]

arrels x = iterate (\y -> (y +  x/y)/2) x


arrelFind :: Float -> Float -> [Float] -> Float

arrelFind e p (x:xs)
    | abs (p - x) <= e = x
    | otherwise = arrelFind e x xs


arrel :: Float -> Float -> Float

arrel x e = arrelFind e l lA
    where (l:lA) = arrels x


data LTree a = Leaf a | Node (LTree a) (LTree a)

instance Show a => Show (LTree a) where
    show (Leaf n) = "{" ++ (show n) ++ "}"
    show (Node fe fd) = "<" ++ (show fe) ++ "," ++ (show fd) ++ ">"


build :: [a] -> LTree a

build [x] = Leaf x
build xs = Node (build le) (build ld)
    where   l = length xs
            i = div l 2 + mod l 2
            (le, ld) = splitAt i xs


zipLTrees :: LTree a -> LTree b -> Maybe (LTree (a,b))

zipLTrees (Leaf a) (Leaf b) = Just (Leaf (a,b))
zipLTrees (Node fe1 fd1) (Node fe2 fd2) = do
    x <- zipLTrees fe1 fe2
    y <- zipLTrees fd1 fd2
    return $Node x y
zipLTrees _ _ = Nothing
