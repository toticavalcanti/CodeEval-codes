def fizz_buzz(x, y, n)
	ary = [0] * n

	ary.count.times do |i|
		if (i + 1) % x == 0 && (i + 1) % y == 0
			ary[i] = "fb" 
		elsif (i + 1) % x == 0
			ary[i] = "f" 
		elsif (i + 1) % y == 0	
			ary[i] = "b" 
		else
			ary[i] = i + 1
		end	
	end
	ary
end

fileOut = File.open("output.txt", "a")
fileIn = File.read ("input.txt")

fileIn.each_line do |linha|
	linha = linha.split()
	x = linha[0].to_i
	y = linha[1].to_i
	n = linha[2].to_i
	resp = fizz_buzz(x, y, n)
	puts resp.join(" ")
	fileOut.puts resp.join(" ")
end

fileOut.close