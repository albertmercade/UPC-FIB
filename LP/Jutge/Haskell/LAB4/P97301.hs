fizzBuzz :: [Either Int String]

fizzBuzz = map fizzb [0..]
    where fizzb x
            | mod x 15 == 0 = Right "FizzBuzz"
            | mod x 5 == 0 = Right "Buzz"
            | mod x 3 == 0 = Right "Fizz"
            | otherwise = Left x
