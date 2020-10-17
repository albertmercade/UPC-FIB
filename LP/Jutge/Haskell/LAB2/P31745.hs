flatten :: [[Int]] -> [Int]

flatten = foldl (++) []


myLength :: String -> Int

myLength s = foldl (+) 0 $ map (const 1) s


myReverse :: [Int] -> [Int]

myReverse = foldl (\a b -> b:a) []


--myReverseR :: [Int] -> [Int]
--
--myReverseR = foldr (\a b -> b++[a]) []


countIn :: [[Int]] -> Int -> [Int]

countIn xs n = map (length . filter (==n)) xs


firstWord :: String -> String

firstWord = takeWhile (/=' ') . dropWhile (==' ')
