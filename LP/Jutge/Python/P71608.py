class Tree:
    def __init__(self, x):
        self.rt = x
        self.child = []

    def add_child(self, a):
        self.child.append(a)

    def root(self):
        return self.rt

    def ith_child(self, i):
        return self.child[i]

    def num_children (self):
        return len(self.child)


class Pre(Tree):
    def preorder(self):
        sol = [self.root()]
        for i in range(self.num_children()):
            sol += self.ith_child(i).preorder()
        return sol
