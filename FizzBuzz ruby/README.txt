FIZZ BUZZ

Players generally sit in a circle. The first player says the number “1”, and each player says next number in turn. However, any number divisible by X (for example, three) is replaced by the word fizz, and any divisible by Y (for example, five) by the word buzz. Numbers divisible by both become fizz buzz. A player who hesitates, or makes a mistake is eliminated from the game.

Write a program that prints out the final series of numbers where those divisible by X, Y and both are replaced by “F” for fizz, “B” for buzz and “FB” for fizz buzz.

INPUT SAMPLE:

Your program should accept a file as its first argument. The file contains multiple separated lines; each line contains 3 numbers that are space delimited. The first number is the first divider (X), the second number is the second divider (Y), and the third number is how far you should count (N). You may assume that the input file is formatted correctly and the numbers are valid positive integers.

For example:

3 5 10
2 7 15

OUTPUT SAMPLE:

Print out the series 1 through N replacing numbers divisible by X with “F”, numbers divisible by Y with “B” and numbers divisible by both with “FB”. Since the input file contains multiple sets of values, your output should print out one line per set. Ensure that there are no trailing empty spaces in each line you print.

1 2 F 4 B F 7 8 F B
1 F 3 F 5 F B F 9 F 11 F 13 FB 15

CONSTRAINTS:

The number of test cases ≤ 20
"X" is in range [1, 20]
"Y" is in range [1, 20]
"N" is in range [21, 100]

P.S. The files wait_result.txt is the expected result, used to compare the output.txt file and check if the output is correct.
--------------------------------------------------------------------------------------------------
FIZZ BUZZ

Os jogadores geralmente se sentam em círculo. O primeiro jogador diz número "1", e cada jogador por sua vez, diz o próximo número. No entanto, qualquer número divisível por X (por exemplo, três) passa a ter a palavra fizz, e qualquer divisível por Y (por exemplo, cinco) pela palavra da buzz. Números divisíveis por ambos tornam-se fizz buzz. Um jogador que hesita ou comete um erro é eliminado do jogo.

Escreva um programa que imprime a última série de números onde os divisível de X e Y e ambos são substituídos por "F" para fizz, "B" para o buzz e "FB" para fizz buzz.

ENTRADA DA AMOSTRA:

Seu programa deve aceitar um arquivo como seu primeiro argumento. O arquivo contém várias linhas separadas; cada linha contém 3 números separads por um espaço. O primeiro número é o primeiro divisor de (X), o segundo número é o primeiro divisor de (Y), e o terceiro número é o tamanho da saída (N). Você pode assumir que o arquivo de entrada é formatado corretamente e os números são inteiros positivos válidos.

Por exemplo:

3 5 10
2 7 15

SAÍDA DA AMOSTRA:

Imprime a série 1 a N substituindo números divisíveis por X com "F", números divisíveis por Y com "B" e números divisíveis por ambos com "FB". Uma vez que o arquivo de entrada contém vários conjuntos de valores de entrada, sua saída deve imprimir uma linha para cada conjunto de valores de saída. Certifique-se de que não existem espaços vazios à direita em cada linha que for imprimir.

RESTRIÇÕES:

O número de casos de teste ≤ 20
"X" está no intervalo [1, 20]
"Y" está no intervalo [1, 20]
"N" é no intervalo [21, 100]

Obs. Os arquivos wait_result.txt é o resultado esperado, usado para comparar com o arquivo output.txt e verificar se a saída está correta.