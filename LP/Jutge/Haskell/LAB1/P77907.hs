absValue :: Int -> Int

absValue n
    |n >= 0     =  n
    |otherwise  = -n


power :: Int -> Int -> Int

power a 0 = 1
power a b = a * (power a (b-1))


isPrime :: Int -> Bool

isPrime 1 = False
isPrime n = isPrime' 2
    where
        isPrime' d
            |(div n 2) + 1 == d = True
            |mod n d == 0 = False
            |otherwise = isPrime' (d+1)


slowFib :: Int -> Int

slowFib 0 = 0
slowFib 1 = 1
slowFib 2 = 1
slowFib n = slowFib (n-1) + slowFib (n-2)


quickFib :: Int -> Int

quickFib 0 = 0
quickFib 1 = 1
quickFib n = quickFib' (n-2) 0 1
    where
        quickFib' 0 a b = a + b
        quickFib' n a b = quickFib' (n-1) b (a+b)
