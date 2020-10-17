data Tree a = Node a (Tree a) (Tree a) | Empty deriving (Show)


size :: Tree a -> Int

size Empty = 0

size (Node _ ls rs) = 1 + size ls + size rs


height :: Tree a -> Int

height Empty = 0
height (Node _ ls rs)
    | hls >= hrs = hls + 1
    | otherwise = hrs + 1
        where
            hls = height ls
            hrs = height rs


equal :: Eq a => Tree a -> Tree a -> Bool

equal Empty Empty = True
equal (Node r1 ls1 rs1) (Node r2 ls2 rs2) = (r1 == r2) && (equal ls1 ls2) && (equal rs1 rs2)
equal _ _ = False


isomorphic :: Eq a => Tree a -> Tree a -> Bool

isomorphic Empty Empty = True
isomorphic (Node r1 ls1 rs1) (Node r2 ls2 rs2) = (r1 == r2) && (((isomorphic ls1 ls2) && (isomorphic rs1 rs2)) || ((isomorphic rs1 ls2) && (isomorphic ls1 rs2)))
isomorphic _ _ = False


preOrder :: Tree a -> [a]

preOrder Empty = []
preOrder (Node r ls rs) = r:(preOrder ls) ++ (preOrder rs)


postOrder :: Tree a -> [a]

postOrder Empty = []
postOrder (Node r ls rs) = (postOrder ls) ++ (postOrder rs) ++ [r]


inOrder :: Tree a -> [a]

inOrder Empty = []
inOrder (Node r ls rs) = (inOrder ls) ++  r:(inOrder rs)


breadthFirst :: Tree a -> [a]

breadthFirst t = bf [t]
    where
            bf :: [Tree a] -> [a]
            bf [] = []
            bf (Empty:xs) = bf xs
            bf ((Node root l r):xs) = root : (bf (xs ++ [l] ++ [r]))
