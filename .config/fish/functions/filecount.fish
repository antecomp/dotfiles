# Defined in - @ line 1
function filecount --wraps='find ./ -type f | wc -l' --description 'alias filecount find ./ -type f | wc -l'
  find ./ -type f | wc -l $argv;
end
