"""
Class  CalculatorClass  is conformed by the function
sum(num_list),This function receives an array of numbers
and returns the sum of all elements
"""


class CalculatorClass(object):
    """
    The function receives an  array  and traverses
    it with a  for  and goes adding the elements
    until finishing and returning the cumulative summation.
    """

    def sum(self, num_list):
        """
        num_list list of number
        acum auxiliary
        """
        acum = 0
        for num in num_list:
            acum = num + acum
        return acum
