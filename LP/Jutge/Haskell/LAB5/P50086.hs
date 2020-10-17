data Queue a = Queue [a] [a] deriving (Show)


create :: Queue a

create = (Queue[][])


push :: a -> Queue a -> Queue a

push n (Queue a b) = (Queue a (n:b))


pop :: Queue a -> Queue a

pop (Queue [] []) = (Queue [] [])
pop (Queue [] b) = (Queue (tail (reverse b)) [])
pop (Queue (x:a) b) = (Queue a b)


top :: Queue a -> a

top (Queue [] b) = last b
top (Queue (x:a) _) = x


empty :: Queue a -> Bool

empty (Queue [] []) = True
empty _ = False


instance Eq a => Eq (Queue a)
     where
         (Queue l1 r1) == (Queue l2 r2) = (l1 ++ (reverse r1)) == (l2 ++ (reverse r2))


instance Functor Queue where
    fmap f (Queue xs ys) = Queue (map f xs) (map f ys)


translation :: Num b => b -> Queue b -> Queue b

translation x q = fmap (+x) q


instance Applicative Queue where
    pure x = Queue [x] []
    Queue fa fb <*> Queue xa xb = Queue ((fa ++ reverse fb) <*> (xa ++ reverse xb)) []


concatQueue :: Queue a -> Queue a -> Queue a

concatQueue (Queue xa ya) (Queue xb yb) = Queue (xa ++ reverse ya) (xb ++ reverse yb)


instance Monad Queue where
    return x = Queue [x] []
    Queue xs ys >>= f = foldl concatQueue create $ map f $xs ++ reverse ys


kfilter :: (p -> Bool) -> Queue p -> Queue p

kfilter f c = do
    l <- c
    if f l then return l else create
