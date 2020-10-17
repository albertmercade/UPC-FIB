multEq :: Int -> Int -> [Int]

multEq a b = iterate (\x -> x * (a*b)) 1



myIndex :: Int -> Int -> [Int] -> Int

myIndex _ _ [] = -1
myIndex n pos (x:xs)
    | n==x = pos
    |otherwise = myIndex n (pos+1) xs

myElem :: Int -> [Int] -> [Int] -> Bool

myElem n bL cL
    |  not (elem n bL) = False
    | (elem n bL && not (elem n cL)) || myIndex n 0 bL < myIndex n 0 cL = True
    | otherwise = False

selectFirst :: [Int] -> [Int] -> [Int] -> [Int]

selectFirst [] _ _ = []
selectFirst _ [] _ = []
selectFirst (a:aL) bL cL
    | myElem a bL cL = a:(selectFirst aL bL cL)
    | otherwise = selectFirst aL bL cL
