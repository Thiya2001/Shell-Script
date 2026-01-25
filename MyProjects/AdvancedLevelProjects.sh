log_manager() {
    logdir="$1"
    LogBackups=log_backup_$(date +%Y%m%d)
    mkdir -p "$LogBackups"
    mv "$logdir"/*.log "$LogBackups"/
}

auto_cleanup() {
    logdir="$1"
    find "$logdir" -type f -name "*.log" -delete
}

permission_change() {
    chmod "$2" "$1"
}

deploy_project() {
    build=$1
    server=$2
    cp -r "$build" "$server"
}

while true;
do
    echo "Advanced Level Shell Script Projects : "
    echo "1. Log File Management System"
    echo "2. Auto Cleanup Script"
    echo "3. File Permission Changer"
    echo "4. Project Deployment Automation"
    echo "5. Exit"

    read -p "Enter your choice (1-5) : " choice
    case $choice in
        1) read -p "Enter log directory path : " logdir
           log_manager "$logdir"
           ;;
        2) read -p "Enter log directory path for cleanup : " logdir
           auto_cleanup "$logdir"
           ;;
        3) read -p "Enter file/folder path : " path
           read -p "Enter permission (e.g., 755) : " perm
           permission_change "$path" "$perm"
           ;;
        4) read -p "Enter build directory path : " build
           read -p "Enter server deployment path : " server
           deploy_project "$build" "$server"
           ;;
        5) echo "Exiting Advanced Level Shell Script Projects."
            break
            ;;
        *) echo "Invalid choice. Please enter a number between 1 and 5." ;;
    esac
done
