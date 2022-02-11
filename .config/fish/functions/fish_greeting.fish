function fish_greeting
  # set the shell var to fish (mainly so neofetch identifies correctly)
  export SHELL=/usr/bin/fish
  set_color $fish_color_autosuggestion
  #  echo "Navi Online. User: $USER"
  bash ~/.config/fish/functions/ctext
  set_color normal
  #  I have no fucking idea why it isnt just saving the export.
  #  Set vim as default editor and file viewer.
  export VISUAL=vim
end
