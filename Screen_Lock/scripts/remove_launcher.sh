cd "$(head -1 ~/.config/eww/directory.txt)"

value=`cat ~/.config/eww/password.txt`  

if [[ $value = $1 ]]
then
    ./eww close-all
    bash ~/.config/eww/waiting.txt
    notify-send "You Are Unlocked :)"
else
    curr_pattern=`cat ~/.config/eww/pattern.txt`  
    truncate -s 0 ~/.config/eww/pattern.txt
    if [[ $curr_pattern = "|.." ]]
    then 
        echo ".|." >> ~/.config/eww/pattern.txt
    elif [[ $curr_pattern = ".|." ]]
    then 
        echo "..|" >> ~/.config/eww/pattern.txt
    else   
        echo "|.." >> ~/.config/eww/pattern.txt
    fi
    ./eww open authen
fi
