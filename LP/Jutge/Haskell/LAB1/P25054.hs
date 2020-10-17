myLength :: [Int] -> Int

myLength [] = 0
myLength (x:xs) = 1 + myLength xs


myMaximum :: [Int] -> Int

myMaximum [x] = x
myMaximum (x:xs)
    | x > max = x
    | otherwise = max
    where max = myMaximum xs


average :: [Int] -> Float

average xs = fromIntegral $ div (sum xs) (myLength xs)


buildPalindrome :: [Int] -> [Int]

buildPalindrome xs = reverse xs ++ xs


remove :: [Int] -> [Int] -> [Int]

remove [] xr = []
remove (x:xs) xr
    | elem x xr = newlist
    | otherwise = [x] ++ newlist
    where newlist = remove xs xr


flatten :: [[Int]] -> [Int]

flatten [] = []
flatten (x:xs) = x ++ flatten xs


oddsNevens :: [Int] -> ([Int],[Int])

oddsNevens [] = ([],[])
oddsNevens (x:xs)
    | mod x 2 == 0 = (fst tuple, [x] ++ snd tuple)
    | otherwise = ([x] ++ fst tuple, snd tuple)
    where tuple = oddsNevens xs


isPrime :: Int -> Bool

isPrime 1 = False
isPrime n = isPrime' 2
    where
        isPrime' d
            |(div n 2) + 1 == d = True
            |mod n d == 0 = False
            |otherwise = isPrime' (d+1)


primeDivisors :: Int -> [Int]

primeDivisors n = [x | x <- [2..n], mod n x == 0, isPrime x]
