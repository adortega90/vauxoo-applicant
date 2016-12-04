"""
Class * CalculatorClass * is conformed by the function 
sum(num_list),This function receives an array of numbers
and returns the sum of all elements
"""


class CalculatorClass(object):
	"""
    The function receives an * array * and traverses
     it with a * for * and goes adding the elements 
     until finishing and returning the cumulative summation.
    """

	def sum(self, num_list):
		acum = 0
		for i in num_list:
			acum = i + acum
		return acum 