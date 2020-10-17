class Tree:
    def __init__(self, x):
        self.rt = x
        self.child = []

    def __iter__(self):
        yield self.root()

    def addChild(self, a):
        self.child.append(a)

    def root(self):
        return self.rt

    def ithChild(self, i):
        return self.child[i]

    def numChildren (self):
        return len(self.child)


class Pre(Tree):
    def preorder(self):
        sol = [self.root()]
        for i in range(self.numChildren()):
            sol += self.ithChild(i).preorder()
        return sol
