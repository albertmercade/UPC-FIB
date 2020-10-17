insert :: [Int] -> Int -> [Int]

insert [] n = [n]
insert (x:xs) n
    | x < n = [x] ++ insert xs n
    | otherwise = [n,x] ++ xs


isort :: [Int] -> [Int]

isort [] = []
isort (x:xs) = insert (isort xs) x


remove :: [Int] -> Int -> [Int]

remove (x:xs) n
    | x == n = xs
    | otherwise = [x] ++ remove xs n


ssort :: [Int] -> [Int]

ssort [] = []
ssort xs = [minxs] ++ ssort (remove xs minxs)
    where minxs = minimum xs


merge :: [Int] -> [Int] -> [Int]

merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
    | x < y = [x] ++ merge xs ([y]++ys)
    | otherwise = [y] ++ merge ([x]++xs) ys


msort :: [Int] -> [Int]

msort [] = []
msort [x] = [x]
msort xs = merge (msort (take hsize xs)) (msort (drop hsize xs))
    where hsize = div (length xs) 2


qsort :: [Int] -> [Int]

qsort [] = []
qsort (x:xs) = qsort [p | p <- xs, p<x] ++ [x] ++ qsort [p | p <- xs, p>=x]


genQsort :: Ord a => [a] -> [a]

genQsort [] = []
genQsort (x:xs) = genQsort [p | p <- xs, p<x] ++ [x] ++ genQsort [p | p <- xs, p>=x]
