from functools import reduce

def count_unique(L):
    return len(set(L))


def remove_duplicates(L):
    return list(set(L))


def flatten(L):
    return reduce(lambda a, x: a + x, L, [])


def flatten_rec(L):
    if not L:
        return []
    if isinstance(L[0],list):
        return flatten_rec(L[0]) + flatten_rec(L[1:])
    else:
        return L[0:1] + flatten_rec(L[1:])
