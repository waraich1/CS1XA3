
check_repositories()
{
git status -uall
}
check_uncommited(){
git diff $1 >> changes.log
}
create_todo(){
grep "#TODO" >> todo.log 
}

error_hs(){
find -name "*.hs" -exec ghc -fno-code {} \;&>error.log
}

 
