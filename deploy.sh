# setup bundle env
bundle config set --local path ~/.bundle

# first deploy through compiling websites locally (into branch master) then push to remote (branch master)
bin/deploy --user

# don't forget also push the source !
# git push 
