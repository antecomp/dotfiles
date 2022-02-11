function yoink --wraps='git clone' --description 'alias yoink=git clone'
  git clone $argv; 
end
