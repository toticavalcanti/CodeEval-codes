DETECTING CYCLES 

CHALLENGE DESCRIPTION:

Given a sequence, write a program to detect cycles within it.

INPUT SAMPLE:

Your program should accept as its first argument a path to a filename containing a sequence of numbers (space delimited). The file can have multiple such lines. E.g


2 0 6 3 1 6 3 1 6 3 1
3 4 8 0 11 9 7 2 5 6 10 1 49 49 49 49
1 2 3 1 2 3 1 2 3

OUTPUT SAMPLE:

Print to stdout the first cycle you find in each sequence. Ensure that there are no trailing empty spaces on each line you print. E.g.

6 3 1
49
1 2 3

The cycle detection problem is explained more widely on wiki 

Constrains: 
The elements of the sequence are integers in range [0, 99] 
The length of the sequence is in range [0, 50]

----------------------------------------------------------------------------------------------------------------

DETECÇÃO DE CICLOS

DESCRIÇÃO DO DESAFIO:

Dada uma seqüência, escrever um programa para detectar ciclos dentro dele.

ENTRADA DA AMOSTRA:

Seu programa deve aceitar como primeiro argumento um caminho para um arquivo contendo uma seqüência de números (delimitada por espaços). O arquivo pode ter várias dessas linhas. Por exemplo.


2 0 6 1 6 3 6 3 1 1 3
3 4 8 0 11 9 7 2 5 6 10 1 49 49 49 49
1 2 3 1 2 3 1 2 3

EXEMPLO DE SAÍDA:

Imprimir na stdout o primeiro ciclo encontrado em cada sequência. Certifique-se de que não existem espaços vazios à direita em cada linha a ser impressa. Por exemplo.

6 3 1
49
1 2 3

O problema de detecção de ciclo é explicado mais amplamente no wiki

restrição:
Os elementos da seqüência são inteiros no intervalo [0, 99]
O comprimento da sequência é no intervalo [0, 50]