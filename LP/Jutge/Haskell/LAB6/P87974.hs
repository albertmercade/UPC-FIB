main = do
    nom <- getLine
    if (take 1 nom) == "A" || (take 1 nom) == "a" then putStrLn "Hello!"
    else putStrLn "Bye!"
