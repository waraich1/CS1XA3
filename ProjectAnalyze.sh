check_repositories()
{
git status -uall
}
check_uncommited(){
git diff $1 >> changes.log
}
create_todo(){
(grep -r -h "#TODO" --exclude="ProjectAnanalyze.sh"--exclude="changes.log" --exclude="todo.log" .)  >> todo.log
}

error_hs(){
find -name "*.hs" -exec ghc -fno-code {} \;&>error.log
}
check_flies(){
if [ -f ~/harry.hs ]
then
         echo "The file exists"
else
         echo "the f does not exist"

fi
}
More_coding(){
a = $(find . -name '*.hs' | xargs wc -l)
b = $(find . -name '*.py' | xargs wc -l)

if [ "$a" -gt "$b"]; then
    echo "There are more haskell code than python"
elif ["$b" -gt "$a"]; then
    echo "There are more python code than haskell"
else
    echo "There are no haskell or python files"

fi

}
