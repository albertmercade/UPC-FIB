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
