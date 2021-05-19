cd "$(head -1 ~/.config/eww/directory.txt)"

./eww close-all
./eww open-many yes_log_out no_log_out back