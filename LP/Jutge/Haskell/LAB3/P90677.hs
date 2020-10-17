myFoldl :: (a -> b -> a) -> a -> [b] -> a

myFoldl f s [] = s
myFoldl f n (x:xs) = myFoldl f (f n x) xs


myFoldr :: (a -> b -> b) -> b -> [a] -> b

myFoldr f n [] = n
myFoldr f n (x:xs) = f x (myFoldr f n xs)


myIterate :: (a -> a) -> a -> [a]

myIterate f n = [n] ++ myIterate f (f n)


myUntil :: (a -> Bool) -> (a -> a) -> a -> a

myUntil b f n
    | b n = n
    | otherwise = myUntil b f (f n)


myMap :: (a -> b) -> [a] -> [b]

myMap f xs = [f x | x <- xs]


myFilter :: (a -> Bool) -> [a] -> [a]

myFilter b xs = [x | x <- xs, b x]


myAll :: (a -> Bool) -> [a] -> Bool

myAll b xs = foldr (\x y -> b x && y) True xs


myAny :: (a -> Bool) -> [a] -> Bool

myAny b xs = foldr (\x y -> b x || y) False xs


myZip :: [a] -> [b] -> [(a, b)]

myZip _ [] = []
myZip [] _ = []
myZip (x:xs) (y:ys) = (x,y):(myZip xs ys)


myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]

myZipWith f xs ys = [f x y | (x,y) <- zip xs ys]
