def is_prime? number
	return false if number == 0 || number.abs == 1
	
    i = 2
    while i < (number / 2 + 1)
    	if (number % i) == 0
    		return false
    	end
    	i += 1
    end
    return true
end

def is_palindrome? (number)
	str = number.to_s
	return true if str == str.reverse
	false
end

def prime_palindrome ()
	(2..1000).reverse_each do |i|
		if (is_prime? (i)) && (is_palindrome? (i))
			return i
		end
	end
end

result = prime_palindrome()
print result