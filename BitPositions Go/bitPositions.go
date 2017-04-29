package main

import (
	"fmt"
	"log"
	"bufio"
	"os"
	"strconv"
	"strings"
)

func reverse(value string) string {

    data := []rune(value)
    result := []rune{}

    for i := len(data) - 1; i >= 0; i-- {
	result = append(result, data[i])
    }
    return string(result)
}
	
func main() {

    file, err := os.Open("entrada.txt")
    if err != nil {
        log.Fatal(err)
    }   

    defer file.Close()
    scanner := bufio.NewScanner(file)

    for scanner.Scan() {
        //'scanner.Text()' represents the test case, do something with it
        linha := scanner.Text()
        vet := strings.Split(linha, ", ")
  		x, _ := strconv.Atoi(vet[0])
		p1, _ := strconv.Atoi(vet[1])
		p2, _ := strconv.Atoi(vet[2])

        strBin := strconv.FormatInt(int64(x), 2) 
    	strBinInv := reverse(strBin)
   
       	if (strBinInv[p1 - 1] == strBinInv[p2 - 1]){
    		fmt.Println("true\n")
    	}else{
    		fmt.Println("false\n")
    	}
    	
    	
	}	   
    	
}