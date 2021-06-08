# This shows the current vim mode on the right side
function fish_right_prompt -d "Write out the right prompt"
echo \
(set_color $fish_color_autosuggestion)\
 (prompt_pwd)\ 
end
