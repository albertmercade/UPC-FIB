exps :: Float -> [Float]

exps d = scanl (\x y -> (x*d)/y) 1.0 [1..]


exponencial :: Float -> Float -> Float

exponencial x e = foldl (+) 0 (takeWhile (>e) (exps x))
