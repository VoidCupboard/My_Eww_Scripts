cd "$(head -1 ~/.config/eww/directory.txt)"

./eww open warning
echo "firefox https://www.reddit.com" >> ~/.config/eww/waiting.txt