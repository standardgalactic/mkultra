0#!/bin/sh 
#:  ▄▀▄▄▄▄   ▄▀▀▄ ▄▀▀▄  ▄▀▀▄ ▄▀▄  ▄▀▀▀▀▄  ▄▀▀▀▀▄   ▄▀▀▀█▄    ▄▀▀▀█▀▀▄ 
#: █ █    ▌ █   █    █ █  █ ▀  █ █ █   ▐ █      █ █  ▄▀  ▀▄ █    █  ▐ 
#:▐ █      ▐  █    █  ▐  █    █    ▀▄   █      █ ▐ █▄▄▄▄   ▐   █     
#:  █        █    █     █    █  ▀▄   █  ▀▄    ▄▀  █    ▐      █      
#: ▄▀▄▄▄▄▀    ▀▄▄▄▄▀  ▄▀   ▄▀    █▀▀▀     ▀▀▀▀    █         ▄▀       
#:█     ▐             █    █     ▐               █         █         
#:▐                   ▐    ▐                     ▐         ▐         
#:https://textkool.com/en/ascii-art-generator?hl=default&vl=default&font=THIS&text=cumsoft
#:
#:   ////////////////////////////////
#:  ////////////////////////////////
#: // DONT FORGET TO CHMOD PLZ <3//
#:
#:chmod +x ~/bin/hello.sh



SuperUserName: $ "bash script.sh"
#or
SuperUserName: $ "alias"

[sudo] password prompt for @SuperUserName

#Execute bash
#Execute Multiple bash script packageslist.sh
echo "files=("http://.txt" "http://.txt" "http://.txt" "http://.txt" "http://.txt")" &
process_id=$!
wait $process_id
echo "Exited with status $?"
echo "Completed [y/n]"

#Reading packages list...
#Execute bash script packageslist.sh
echo "packages are: $packages-$packages-$packages" &
process_id=$!
wait $process_id
echo "Exited with status $?"
echo "Completed [y/n]"

#Compiling dependency tree...
#Execute bash script compiledependencytree.sh
echo "dependencies are: $dependencies:$dependencies:$dependencies:" &
process_id=$!
wait $process_id
echo "Exited with status $?"
echo "Completed [y/n]"

#Building dependency tree...
#Execute bash script builddependencytree.sh
echo ${files[4]}
echo ${files[3]}
echo ${files[2]}
echo ${files[1]}
echo ${files[0]} 
echo "unset num" &
process_id=$!
wait $process_id
echo "Exited with status $?"
echo "Completed [y/n]"

#Reading state information....
#Execute bash script stateinformation.sh
echo "state information is: $information:" &
process_id=$!
wait $process_id
echo "Exited with status $?"
echo "Completed [y/n]"

#Calculating upgrade...
#execute bash script calculate.sh
echo "Finish will take this long: time"
echo "0 upgraded"
echo "0 newly installed"
echo "0 to remove and 0 not upgraded"
#Done!


#Closing Arguments...
#https://stackoverflow.com/questions/18568706/check-number-of-arguments-passed-to-a-bash-script
#Execute bash script closingarguments.sh
if [[ $# -ne 1 ]]; then
    echo "Illegal number of parameters" >&2
    exit 2
fi

#Returned back to SuperUserName
SuperUserName: $ 
