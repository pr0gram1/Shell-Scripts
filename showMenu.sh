# Function to display the menu
show_menu() {
    echo "File Management Script"
    echo "1. Create a file"
    echo "2. Delete a file"
    echo "3. Create a directory"
    echo "4. Delete a directory"
    echo "5. List files in a directory"
    echo "6. Exit"
}

# Function to create a file
create_file() {
    read -p "Enter the file name: " filename
    touch "$filename"
    echo "File '$filename' created successfully."
}

# Function to delete a file
delete_file() {
    read -p "Enter the file name to delete: " filename
    [ -f "$filename" ] && { rm "$filename"; echo "File '$filename' deleted successfully."; } || echo "File '$filename' does not exist."
}

# Function to create a directory
create_directory() {
    read -p "Enter the directory name: " dirname
    mkdir -p "$dirname"
    echo "Directory '$dirname' created successfully."
}

# Function to delete a directory
delete_directory() {
    read -p "Enter the directory name to delete: " dirname
    [ -d "$dirname" ] && { rmdir "$dirname"; echo "Directory '$dirname' deleted successfully."; } || echo "Directory '$dirname' does not exist."

}

# Function to list files in a directory
list_files() {
    read -p "Enter the directory name: " dirname
    [ -d "$dirname" ] && { echo "Files in directory '$dirname':"; ls -l "$dirname"; } || echo "Directory '$dirname' does not exist."
}

# Main script logic
# chmod +x /path/to/yourscript.sh - Sets file as executable
# /path/to/yourscript.sh
# ./yourscript.sh
while true; do
    show_menu
    read -p "Choose an option (1-6): " choice
    case $choice in
        1) create_file ;;
        2) delete_file ;;
        3) create_directory ;;
        4) delete_directory ;;
        5) list_files ;;
        6) echo "Exiting..."; break ;;
        *) echo "Invalid option. Please try again." ;;
    esac
done


# [condition] && {trueResult} || {falseResult} is ternarry operator its same as if else statement
# if [condition] then;
# echo...
#else echo....
#fi


