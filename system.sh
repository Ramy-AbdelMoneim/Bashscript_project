#!/bin/bash

# Check if the 'database' directory exists in the user's home directory
if [ ! -d "$HOME/database" ]; then
    mkdir "$HOME/database"
fi

# Moving to the 'database' directory
cd "$HOME/database" || exit

# Clearing the terminal for fresh start
clear

# Creating a menu system
PS3="Please choose an option: "
select CHOICE in "Create Database" "List Databases" "Connect to Database" "Drop Database" "Exit"
do
    case $CHOICE in
        "Create Database")
            createdatabase
            ;;
        "List Databases")
            listdatabases
            ;;
        "Connect to Database")
            connecttodatabase
            ;;
        "Drop Database")
            dropdatabase
            ;;
        "Exit")
            echo "Exiting the DBMS. Goodbye!"
            break
            ;;
        *)
            echo "Invalid choice, please try again."
            ;;
    esac
done

exit 0


