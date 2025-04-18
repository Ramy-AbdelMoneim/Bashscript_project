#!/bin/bash

clear

# Providing a confirmation that the user is connected to the database
echo "Connected to database: $(basename "$(pwd)")"

# Creating a secondary menu system
PS3="Please choose an option: "
select CHOICE in "Create table" "List tables" "Drop table" "Insert into table" "Select from table" "Delete from table" "Update table" "Exit"
do
    case $CHOICE in
        "Create table")
            _createtable
            ;;
        "List tables")
            _listtables
            ;;
        "Drop table")
            _droptable
            ;;
        "Insert into table")
            _insertintotable
            ;;
        "Select from table")
            _selectfromtable
            ;;
        "Delete from table")
            _deletefromtable
            ;;
        "Update table")
            _updatetable
            ;;
        "Exit")
            system.sh
            break
            ;;
        *)
            echo "Invalid choice, please try again."
            ;;
    esac
done


