__author__ = 'Toti Cavalcanti'

def is_prime(number):
    i = 2

    while i < (number / 2 + 1):
    	if (number % i) == 0:
    		return False
    	i += 1
    return True


def solution(limit):
    index = 2
    countPrimes = 0
    sumPrimes = 0

    while (countPrimes != limit):
    	if(is_prime(index)):
    		countPrimes += 1
    		sumPrimes += index
    	index += 1
    print(sumPrimes)
    return sumPrimes



