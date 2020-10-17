bmi :: Float -> Float -> String

bmi m h
    | b < 18 = "underweight"
    | b >= 18 && b < 25 = "normal weight"
    | b >= 25 && b < 30 = "overweight"
    | b >= 30 && b < 40 = "obese"
    | otherwise = "severely obese"
        where b = m / (h*h)


procesadades :: String -> String

procesadades s =
    let nom = head (words s)
        m = read (head (tail (words s))) :: Float
        h = read (last (words s)) :: Float
    in nom ++ ": " ++ bmi m h


main = do
    p <- getLine
    if p /= "*" then do
        putStrLn $procesadades p
        main
    else putStr ""
