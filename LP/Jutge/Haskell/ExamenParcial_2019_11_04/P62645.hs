mySuma :: [String] -> Int

mySuma [] = 0
mySuma (x:xs) = (read x::Int) + mySuma xs

main = do
    xs <- getContents
    putStrLn (show (mySuma (words xs)))
