data Tree a = Empty | Node a (Tree a) (Tree a)
data Forest a = Forest[Tree a] deriving (Show)

instance Show a => Show (Tree a) where
    show Empty = "()"
    show (Node n fe fd) = "(" ++ (show fe) ++ "," ++ (show n) ++ "," ++ (show fd) ++ ")"

instance Functor Tree where
    fmap f Empty = Empty
    fmap f (Node n fe fd) = Node (f n) (fmap f fe) (fmap f fd)


doubleT :: Num a => Tree a -> Tree a

doubleT t = fmap (*2) t


instance Functor Forest where
    fmap fs (Forest ts) = Forest $ map (fmap fs) ts


doubleF :: Num a => Forest a -> Forest a

doubleF f = fmap (*2) f
