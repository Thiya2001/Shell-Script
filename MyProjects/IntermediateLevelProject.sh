create_folder_files() {
    folder=$1
    mkdir -p "$folder"
    touch "$folder"/file1.txt "$folder"/file2.txt "$folder"/file3.txt
}

date_Based_File_rename() {
    file=$1
    newfilename="${file%.*}_$(date +%Y%m%d).${file##*.}"
    mv "$file" "$newfilename"
}

multi_rename() {
    for f in *.txt
    do
        mv "$f" "${f%.txt}.bak"
    done
}

delete_old_files() {
    folder=$1
    find "$folder" -type f -mtime +7 -delete
}

backup_zip() {
    folder=$1
    zip -r "${folder}_backup.zip" "$folder"
}

file_extension_check() {
    if [ -f "$1" ]; 
    then
        echo "File exists"
    else
        echo "File not found"
    fi
}

folder_extension_check() {
    if [ -d "$1" ]; 
    then
        echo "Folder exists"
    else
        echo "Folder not found"
    fi
}

while true;
do
    echo "Intermediate Level File Management Project : "
    echo "1. Create Folder and Files"
    echo "2. Date-Based File Rename"
    echo "3. Multiple File Rename"
    echo "4. Delete Old Files"
    echo "5. Backup and Zip Folder"
    echo "6. File Extension Check"
    echo "7. Folder Extension Check"
    echo "8. Exit"

    read -p "Enter your choice (1-8) : " choice
    case $choice in
        1) read -p "Enter folder name to create : " folder_name
           create_folder_files "$folder_name"
           ;;
        2) read -p "Enter file name to rename : " file_name
           date_Based_File_rename "$file_name"
           ;;
        3) multi_rename ;;
        4) read -p "Enter folder name to delete old files from : " folder_name
           delete_old_files "$folder_name"
           ;;
        5) read -p "Enter folder name to backup and zip : " folder_name
           backup_zip "$folder_name"
           ;;
        6) read -p "Enter file name to check : " file_name
           file_extension_check "$file_name"
           ;;
        7) read -p "Enter folder name to check : " folder_name
           folder_extension_check "$folder_name"
           ;;
        8) echo "Exiting Intermediate Level File Management Project."
           break
           ;;
        *) echo "Invalid choice. Please enter a number between 1 and 8." ;;
    esac
done