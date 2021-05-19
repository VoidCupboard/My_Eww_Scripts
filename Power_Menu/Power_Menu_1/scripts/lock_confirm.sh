cd "$(head -1 ~/.config/eww/directory.txt)"

./eww close-all
./eww open-many yes_lock no_lock back