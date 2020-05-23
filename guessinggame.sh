#program to guess the number of file in current working directory



#function
function guessinggame
{
   #taking the input from the user
   echo "Guess how many files are there in current working directory:"
   read guess
   #calculating the number of files(for me no_of_files=41)
   no_of_files=$(ls | wc -l)
} 

guessinggame 
#while loop to check whether the guess is equal total or not. 
while [[ $guess -ne $no_of_files ]]
do
   #if condition to check guessed value is too high(here too high means if the guess value is greater than no_of_file+5. note difference can be any value(here i have taken 5) )
   if [[ $guess -gt `expr $no_of_files + 5` ]]
   then
     echo "guess is too high!! try again.."
   #elif condition to check guessed value is too low(no_of_files-5)
   elif [[ $guess -le `expr $no_of_files - 5` ]]
   then
     echo "guess is too low!! try again.."
   #else the guess is near the real value
   else
      echo "guess is near the real value!! try again.."
   fi
   guessinggame  
done

echo "congratulations!!! you guess the right value..the number of files are $total"

