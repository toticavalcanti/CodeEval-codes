package br.com.reverse_words;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class ReverseWords {

	public static void main(String[] vargs) {
		
		 try {
		        File file = new File(vargs[0]);
		        BufferedReader in = new BufferedReader(new FileReader(file));
		        String line;
		      
		        while ((line = in.readLine()) != null) {
		        	if (line.length() > 0 && line != " ")
		        	{
			        	String[] lineArray = line.split(" ");
			        	
			        	 if (lineArray.length == 1){
			        		System.out.println (lineArray[0]);
			        	}else 
			        	{
			        		for(int i = lineArray.length -1; i >= 0; i--) {
			        			System.out.print(lineArray[i] + " ");
			        		}
			        		System.out.println();
			        	}
		        	}
		        	
		        }
		 } catch (IOException e) {
		        System.out.println("File Read Error: " + e.getMessage());
		 } 
		
		
	}

}
