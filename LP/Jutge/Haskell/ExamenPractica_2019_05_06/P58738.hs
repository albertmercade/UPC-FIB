data STree a = Nil | Node Int a (STree a) (STree a) deriving Show


isOk :: STree a -> Bool
isOK Nil = True
isOk (Node a r fe fd) = a == nTalles (Node a r fe fd)
    where   nTalles Nil = 0
            nTalles (Node _ _ fe fd) = 1 + nTalles fe + nTalles fd


nthElement :: STree a -> Int -> Maybe a

nthElement (Node _ r _ _) 0 = Just r
nthElement (Node a r fe fd) n = nthElement fe n
