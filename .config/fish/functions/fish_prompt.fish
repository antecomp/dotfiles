function fish_prompt -d "Write out the prompt"

# Detect jobs
set jobcount (jobs | wc -l | xargs)
if test $jobcount -ge 1
    set lejobstat ""
end

# Draw prompt
echo \
\n\
(set_color $fish_color_autosuggestion)\
" $lejobstat   "
end
