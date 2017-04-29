require './prime_palindrome'

context "Prime Verify" do
	describe "Primes"  do
		it "2" do
			expect(is_prime? 2).to eq(true)
		end

		it "7" do
			expect(is_prime? 7).to eq(true)
		end

		it "37" do
			expect(is_prime? 37).to eq(true)
		end

		it "-19" do
			expect(is_prime? -13).to eq(true)
		end

	end

	describe "non primes" do
		it "1" do
			expect(is_prime? 1).to eq(false)
		end

		it "0" do
			expect(is_prime? 0).to eq(false)
		end

		it "10" do
			expect(is_prime? 10).to eq(false)
		end
		
	end
end

context "Palindrome verify" do
	describe "Palindromes" do
		it "1" do
			expect(is_palindrome? 1).to eq(true)
		end

		it "929" do
			expect(is_palindrome? 929).to eq(true)
		end

		it "929" do
			expect(prime_palindrome()).to eq(929)
		end
	end
end

