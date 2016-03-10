begin

	fileIn = File.read (ARGV[0])
	setData = []
	textLines = ""
	fileIn.each_line do |line|	
			textLines << line
	end

	aryLines = textLines.split("\n")#Transfoma a string textLines em um array chamado lines
	aryLines.delete_if { |x| x == '\r' || x == '' || x == ' '}#elimina todos as linhas em branco

	sizeOutPut = aryLines[0].to_i
	i = 1
	while i < aryLines.length
		setData << aryLines[i].strip
		i += 1
	end

	setData.sort_by! { |line| line.length } #Ordena um conjunto de entrada pelo tamanho
	setData.reverse! #Inverte a ordem de um conjunto de entrada

	puts setData[0..sizeOutPut - 1]   #imprime linha de texto de um conjunto de entrada		
	puts ""
	
end