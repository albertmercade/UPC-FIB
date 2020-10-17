countIf :: (Int -> Bool) -> [Int] -> Int

countIf b xs = foldl (\x y -> if b y then x+1 else x) 0 xs


pam :: [Int] -> [Int -> Int] -> [[Int]]

pam xs fs = [map f xs | f <- fs]


pam2 :: [Int] -> [Int -> Int] -> [[Int]]

pam2 xs fs = [[f x| f <- fs] | x <- xs]


filterFoldl :: (Int -> Bool) -> (Int -> Int -> Int) -> Int -> [Int] -> Int

filterFoldl b f n xs =  foldl (\x y -> if b y then f x y else x) n xs


insert :: (Int -> Int -> Bool) -> [Int] -> Int -> [Int]

insert _ [] n = [n]
insert b (x:xs) n
    | b x n = x :(insert b xs n)
    | otherwise = [n] ++ (x:xs)


insertionSort :: (Int -> Int -> Bool) -> [Int] -> [Int]

insertionSort b xs = foldr (\x y -> insert b y x) [] xs
