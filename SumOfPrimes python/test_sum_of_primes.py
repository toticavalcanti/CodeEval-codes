import unittest
from sum_of_primes import solution

class TestSumPrimes(unittest.TestCase):
	def test_sum_the_first_thousand_primes(self):
		self.assertEqual(solution(1000), 3682913)

unittest.main()