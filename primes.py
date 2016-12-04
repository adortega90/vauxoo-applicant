"""
Class * PrimeClass * is conformed by the function 
is_prime that is in charge of
 determining if a numer X is prime or not
"""


class PrimeClass(object):
    """
    How to work function is_prime(num)
   		if num is minor to 2 is_prime(num) return False	
    """
	def is_prime(num):
	    if num < 2:     
	        return False
	    for i in range(2, num):  #A range from the number to the number choose
	        if num % i == 0:    #If the rest gives 0 is not prime, therefore returns False
	            return False
	        return True    #Otherwise returns True
