change_directory() {
    dir=$1
    cd "$dir" || { echo "Directory not found!"; return; }
    echo "Changed directory to $dir"
}

create_and_move() {
    NewDirectory=$1
    target=$2
    mkdir -p "$NewDirectory"
    mv "$target"/* "$NewDirectory"/
    echo "Created directory : $NewDirectory and moved contents of $target into it."
}

copy_folder() {
    src=$1
    dest=$2
    cp -r "$src" "$dest"
    echo "Folder copied : $src → $dest"
}

delete_folder() {
    dir=$1
    rm -rf "$dir"
    echo "Folder deleted : $dir"
}

rename_folder() {
    old_name=$1
    new_name=$2
    mv "$old_name" "$new_name"                    
    echo "Folder renamed : $old_name → $new_name"
}

while true; 
do
    echo "File Management Menu:"
    echo "1. Change Directory"
    echo "2. Create New Directory and Move Files"
    echo "3. Copy Folder"
    echo "4. Delete Folder"
    echo "5. Rename Folder"
    echo "6. Exit"

    read -p "Enter your choice (1-6) : " choice

    case $choice in
        1) read -p "Enter directory path : " dir
            change_directory "$dir"
            ;;
        2) read -p "Enter new directory name : " new_dir
            read -p "Enter target directory to move files from : " target_dir
            create_and_move "$new_dir" "$target_dir"
            ;;
        3) read -p "Enter source folder path : " src
            read -p "Enter destination folder path : " dest
            copy_folder "$src" "$dest"
            ;;
        4) read -p "Enter folder path to delete : " del_dir
            delete_folder "$del_dir"
            ;;
        5) read -p "Enter current folder name : " old_name
            read -p "Enter new folder name : " new_name
            rename_folder "$old_name" "$new_name"
            ;;
        6) echo "Exiting File Management Menu."
            break
            ;;
        *) echo "Invalid choice try again."
            ;;
    esac
done