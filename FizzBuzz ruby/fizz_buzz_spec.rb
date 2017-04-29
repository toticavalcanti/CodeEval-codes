require './fizz_buzz'

describe 'Múltiplos de x fizz de y buzz de x e y fizzbuzz' do
	
	it " x = 3 e y = 5 n = 10" do
		expect(fizz_buzz(3, 5, 10)).to eq([1, 2, "f", 4, "b", "f", 7, 8, "f", "b"])
	end

	it " x = 2 e y = 7 n = 15" do
		expect(fizz_buzz(2, 7, 15)).to eq([1, "f", 3, "f", 5, "f", "b", "f", 9, "f", 11, "f", 13, "fb", 15])
	end

end