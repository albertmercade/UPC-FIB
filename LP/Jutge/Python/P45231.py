import math


def fibs():
    a = 0
    yield a
    b = 1
    while True:
        yield b
        a, b = b, a + b


def roots(x):
    a = x
    while True:
        yield a
        a = 0.5*(a + (x / a))


def isPrime(x):
    for i in range(2, int(math.sqrt(x))+1):
        if x % i == 0:
            return False
    return True


def primes():
    x = 2
    while True:
        if isPrime(x):
            yield x
        x += 1


def isHamming(x):
    for i in [2, 3, 5]:
        while x % i == 0:
            x /= i
    if x == 1:
        return True
    else:
        return False


def hammings():
    x = 1
    while True:
        if isHamming(x):
            yield x
        x += 1
