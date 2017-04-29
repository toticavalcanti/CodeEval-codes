File.open("input.txt").each_line do |line|
	(x,y,n) = line.split(" ").map(&:to_i)
	1.upto(n) do |i|
		if i % x == 0 && i % y == 0
			print "FB"
		elsif i % x == 0
			print "F"
		elsif i % y == 0
			print "B"
		else
			print i
		end
		if i < n
			print " "
		end
	end
	print "\n"
end