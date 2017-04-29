exports.longest_common_subsequence_result = function (line) {
	 	var answer_line = [];
	 	
        //Split the strings in a array of two strings
    	var arrayTwoStrings = line.split(';');//Split the two strings 
    
    	var array1 = arrayTwoStrings[0];//First string 
    	var array2 = arrayTwoStrings[1];//Second string
    
    	var array1_len = array1.length; 
    	var array2_len = array2.length;
    
    	// Initializes the matrix with one plus position
    	var matrix = new Array(array1_len + 1);
    	for (i=0; i < array1_len + 1; i++)
          matrix[i] = new Array(array2_len + 1);
    
    	// initializes the first column with 0
    	for(var i = 1; i <= array1_len; i++){
    		matrix[i][0] = 0;
    	}
    
    	// initializes the first line with 0
    	for(var i = 0; i <= array2_len; i++){
    		matrix[0][i] = 0;
    	}
    
    	// Core of logic
    	for(var i = 1; i <= array1_len; i++){
    		for(var j = 1; j <= array2_len; j++){
    			if (array1[i - 1] == array2[j - 1]){
    				matrix[i][j] = matrix[i - 1][j - 1] + 1;
    			}else{
    				 		matrix[i][j] = Math.max(matrix[i][j - 1], matrix[i - 1][j]);
    			}	
    		}
    	}
    
    	// Following code is used to print LCS
       // Start from the right-most-bottom-most corner and
       // one by one store characters in lcs[]
    	var i = array1_len;
    	var j = array2_len;
    
    	while (i > 0 && j > 0){
    		// If current character in array1[] and array2[] are same, then
        	// current character is part of LCS
    		if (array1[i - 1] == array2[j - 1]){
    			answer_line.unshift(array1[i - 1]);// Put current character in result
    			i--; // reduce values of i
    			j--; // reduce values of j
    		}      
    		// If not same, then find the larger of two and
          	// go in the direction of larger value
          	else	if (matrix[i - 1][j] > matrix[i][j - 1]){
             			i--;
             		}
          			else{
             			j--;
          			}
       }


	 // return the lcs
    return answer_line.join('');
}