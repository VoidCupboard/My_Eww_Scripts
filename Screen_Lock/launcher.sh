pass=`cat ~/.config/eww/password.txt || ""`

if [[ $pass = "" ]]
then 
    read -p "As no password was set, Choose a password: " password
    echo "Password Created.. Will be used to unlock from lock."
    touch ~/.config/eww/password.txt
    echo $password >> ~/.config/eww/password.txt
fi



cd "$(head -1 ~/.config/eww/directory.txt)"

truncate -s 0 ~/.config/eww/pattern.txt
truncate -s 0 ~/.config/eww/waiting.txt

echo "|.." >> ~/.config/eww/pattern.txt

./eww open blur
./eww open lock
./eww open github
./eww open terminal
./eww open instagram
./eww open reddit
./eww open facebook
./eww open code-it
./eww open file
./eww open music
./eww open date
./eww open clock
./eww open vol
./eww open bright
./eww open file

