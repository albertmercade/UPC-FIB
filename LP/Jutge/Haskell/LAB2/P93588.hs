myMap :: (a -> b) -> [a] -> [b]

myMap f xs = [f x | x <- xs]


myFilter :: (a -> Bool) -> [a] -> [a]

myFilter p xs = [x | x <- xs, p x]


myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]

myZipWith f xs ys = [uncurry f m | m <- zip xs ys]


thingify :: [Int] -> [Int] -> [(Int, Int)]

thingify xs ys = [(x,y) | x <- xs, y <- ys, mod x y == 0]


factors :: Int -> [Int]

factors n = [x | x <- [1..n], mod n x == 0]
