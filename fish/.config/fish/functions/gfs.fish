function gfs --wraps='git fetch && git status' --description 'alias gfs=git fetch && git status'
  git fetch --quiet && git status -b -s $argv
        
end
