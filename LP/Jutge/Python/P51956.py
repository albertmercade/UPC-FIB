def myLength(L):
    if not L:
        return 0
    return 1 + myLength(L[1:])


def myMaximum(L):
    max = L[0]
    for i in range(1,len(L)):
        if L[i]>max:
            max = L[i]
    return max


def  average(L):
    avg = 0.0
    i = 0
    while(i < len(L)):
        avg += L[i]
        i += 1
    return avg/i


def buildPalindrome(L):
    return L[::-1] + L


def remove(L1, L2):
    return [x for x in L1 if x not in L2]


def flatten(L):
    sol = []
    for l in L:
        if isinstance(l, list):
            sol += flatten(l)
        else:
             sol += [l]
    return sol

def oddsNevens(L):
    return (list(filter(lambda x: x % 2 != 0, L)), \
            list(filter(lambda x: x % 2 == 0, L)))


def isPrime(x):
    if x <= 1:
        return False
    for i in range(2, x//2+1):
        if x % i == 0:
            return False
    return True


def primeDivisors(n):
    sol = []
    for i in range(2,n+1):
        if isPrime(i) and n % i == 0:
            sol += [i]
    return sol
