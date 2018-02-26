###
# Question 1
# git status -uall shows individual files in untracked directories.
git status -uall

# Question 2
# Puts the output of git diff into changes.log in order to show any uncommited changes.
#https://github.com/barskyn
git diff $1 >> changes.log

# Question 3 
# Using Grep command we search for "#TODO" excluding  the todo.log and ProjectAnalyze.sh and place the results into todo.log.
   

(grep -r -h "#TODO" --exclude="ProjectAnalyze.sh" --exclude="changes.log" --exclude="todo.log" --exclude="README.md".) >> todo.log
echo "todo.log created."

# Question 4 
# Using the command provided in hint first we basically search for haskell files and check them for errors and we move all errors to error.log
# https://github.com/khannk1/CS1XA3	

find -name "*.hs" -exec ghc -fno-code {} \;>>error.log 2>&1

# Bonus Question 5
# Searches for a particular file. 

if [ -f ~/harry.hs ]
then
     echo "The file exists"
else
     echo "the f does not exist"
 
fi

# Bonus Question 5
# Checks whether python files has more lines of codes or haskell files.


a=  find . -name '*.hs' | xargs wc -l
b= find . -name '*.py' | xargs wc -l
if [ $a -gt $b ]; then
    echo "There are more haskell code than python"
elif [ $b -gt $a ]; then
    echo "There are more python code than haskell"
else
    echo "There are no haskell or python files"

fi

#Finish
