cd "$(head -1 ~/.config/eww/directory.txt)"

./eww open warning
echo "firefox https://open.spotify.com" >> ~/.config/eww/waiting.txt