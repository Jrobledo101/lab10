#!/bin/bash

while :
do
    echo "[Pajamas-Project Introduction]"
    echo "0 exit"
    echo "1 Introduction"
    echo "2 display files"
    echo "3 credits"
    echo ""
    read -p "[Please enter a number to cont.] > " input1
    case $input1 in

    0) exit 1
    ;;

    1)
    echo ""
    echo "Project: An interactive map of CSUF campus."
    echo ""
    echo "The users to be able to view different points of interest such as the various school buildings, and information about each one. The user can also search the nearly resturant from our website."
    ;;

    2) 
    yourfilenames=`ls`
    for eachfile in $yourfilenames
    do
        echo "$eachfile"
    done
    ;;

    3)
    echo "Credit to: "
    echo "Preshus Dizon preshus.dzn@csu.fullerton.edu"
    echo "Joaquin Robledo jackforgas@gmail.com"
    echo "Site Wei sitew@csu.fullerton.edu"
    ;;

    esac
    echo "------------------------------------------"
    echo ""

    sleep 0.2
done