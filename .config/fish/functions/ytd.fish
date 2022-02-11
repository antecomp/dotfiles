# Defined in - @ line 1
function ytd --wraps=youtube-dlc --description 'alias ytd youtube-dlc'
  read -p 'echo "File Name" \n └\ ' -l fname
  yt-dlp -f mp4 --output $fname\.mp4 $argv;
end
