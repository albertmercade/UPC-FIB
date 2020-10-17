def absValue(x):
    if x < 0:
        return -x
    else:
        return x


def power(x, p):
    result = 1
    for i in range(0, p):
        result *= x
    return result


def isPrime(x):
    if x <= 1:
        return False
    for i in range(2, x//2+1):
        if x % i == 0:
            return False
    return True


def slowFib(n):
    if n == 0:
        return 0
    elif(n == 1 or n == 2):
        return 1
    else:
        return slowFib(n-1) + slowFib(n-2)


def quickFib(n):
    if n == 0:
        return 0
    a, b = 1, 1
    while(n > 2):
        a, b = b, a+b
        n -= 1
    return b
