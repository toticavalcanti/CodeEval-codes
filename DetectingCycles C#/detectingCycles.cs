using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;


class Program
{
    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            if (null == line)
                continue;

            line = line.Trim();
        string[] ary = line.Split(' ');

        int[] myInts = Array.ConvertAll(ary, int.Parse);

        int posHare, posTortoise, tortoise, hare, endCycle, c;

        posTortoise = 0;
        posHare = 1;
        //The hare moves twice faster than the tortoise
        //until they coicidem with the same number 
        do
        {

            if (posHare < myInts.Length)
            {
                tortoise = myInts[posTortoise];
                hare = myInts[posHare];
                posTortoise = posTortoise + 1;
                posHare = posHare + 2;
            }
            else
            {

                //Delete array elements until current position
                myInts = myInts.Skip(posTortoise - 1).ToArray();

                posTortoise = 0;
                tortoise = myInts[posTortoise];
                posHare = 1;
                //If myInts has the length = 1, don´t have cycle
                if (myInts.Length == 1)
                {
                    return;
                }
                else
                {
                    hare = myInts[posHare];
                }
            }
            
        } while (tortoise != hare);

        //Decrements the positions as they were increased after finding the position where tortoise and hare are equal
        posTortoise = posTortoise - 1;
        posHare = posHare - 2;
        //The second fase, the tortoise back to start and the Hare position is subtracted from Tortoise position
        posHare = posHare - posTortoise;
        hare = myInts[posHare];
        posTortoise = 0;
        tortoise = myInts[posTortoise];      
       
        //If the cycle start is in the begin of array myInts
        if (tortoise == hare)
        {   //print the result if the cycle start is in the begin of array myInts
            endCycle = posHare - posTortoise;
            c = 0;
            while (c < endCycle)
            {
                Console.Write(myInts[c - posTortoise] + " ");
                c += 1;
            }
        }
        else
        {   //detects the start of cycle
            while (tortoise != hare)
            {
                posHare += 1;
                if (posHare > myInts.Length - 1)
                {
                    posHare = myInts.Length - 1;
                }
                posTortoise += 1;
                tortoise = myInts[posTortoise];
                hare = myInts[posHare];
            }//while

            //Find the end of the cycle
            posHare = posTortoise + 1;
            tortoise = myInts[posTortoise];
            hare = myInts[posHare];

            while (tortoise != hare)
            {
                posHare++;
                hare = myInts[posHare];
            }

            endCycle = posHare - posTortoise;
            c = 0;
            //print the result
            while (c < endCycle)
            {
                Console.Write(myInts[posTortoise + c] + " ");
                c++;
            }//while
        }//else
        Console.WriteLine();
        }  
    }//main
}//class