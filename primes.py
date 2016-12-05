"""
Class  PrimeClass  is conformed by the function
is_prime that is in charge of determining
if a numer X is prime or not
Import math library for use of the function floor
"""
import math

class PrimeClass(object):
    """
    How to work function is_prime(num)
    if num is minor to 2 is_prime(num) return False
    if num == 2 return True
    If none of the above is true, the number
    """

    def is_prime(self, num):
        """
        :num is the number a value
        :aux auxiliary value for operatons
        """
        # Start evaluation
        if num < 2:
            return False
        elif num == 2:
            return True
        else:
            aux = math.floor(num/2)
            while aux >= 2:
                if num % aux == 0:
                    return False
                else:
                    aux = aux-1
            return True
