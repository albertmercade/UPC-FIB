ones :: [Integer]

ones = repeat 1

nats :: [Integer]

nats = iterate (+1) 0


ints :: [Integer]

ints = ints' [0,1]
        where   ints' :: [Integer] -> [Integer]
                ints' xs
                    | last xs < 0 = xs ++ ints' [-(last xs) + 1]
                    | otherwise = xs ++ ints' [-(last xs)]


triangulars :: [Integer]

triangulars = map (\x -> div (x*(x+1)) 2) nats


factorials :: [Integer]

factorials = scanl (*) 1 (tail nats)


fibs :: [Integer]

fibs = fibs' 0 1
    where
        fibs' m n = m : fibs' n (m+n)


isPrime :: Integer -> Bool

isPrime 1 = False
isPrime n = isPrime' 2
    where
        isPrime' d
            |(div n 2) + 1 == d = True
            |mod n d == 0 = False
            |otherwise = isPrime' (d+1)

primes :: [Integer]

primes = filter isPrime nats


merge :: [Integer] -> [Integer] -> [Integer]

merge [] xs = xs
merge xs [] = xs
merge (x:xs) (y:ys)
    | x < y = x : merge xs (y:ys)
    | x > y = y : merge (x:xs) ys
    | otherwise = x : merge xs ys

hammings :: [Integer]

hammings = (1 : merge (map (2*) hammings) (merge (map (3*) hammings) (map (5*) hammings)))


digit :: Integer -> Integer

digit n = digit' (quot n 10) (mod n 10) 1
    where
        digit' :: Integer -> Integer -> Integer -> Integer
        digit' 0 x c = c*10 + x
        digit' n x c
            | mod n 10 == x = digit' (quot n 10) x (c+1)
            | otherwise = (digit' (quot n 10) (mod n 10) 1)*100 + c*10 + x


lookNsay :: [Integer]

lookNsay = iterate digit 1


tartaglia :: [[Integer]]
tartaglia = iterate (\l -> zipWith (+) (0:l) (l++[0])) [1]
