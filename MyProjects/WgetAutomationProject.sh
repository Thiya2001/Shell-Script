single_file() {
    wget "https://github.com/PiaSys/PiaSys.Samples/blob/master/SampleFile.txt"
}

multiple_file() {
    wget "https://github.com/sindresorhus/multi-download"
}

resume_download() {
    wget -c "https://github.com/thatbeautifuldream/resume-to-pdf"
}

website_mirror() {
    wget --mirror -p --convert-links -P ./backup "https://gist.github.com/svagionitis/2398ce6c537a60fd09677a80be50fd90"
}

batch_image_download() {
    wget -r -A jpg,png "https://github.com/shawon922/Batch-Image-Downloader"
}

while true;
do
    echo "Wget Automation Menu:"
    echo "1. Download Single File"
    echo "2. Download Multiple Files"
    echo "3. Resume Interrupted Download"
    echo "4. Mirror Website"
    echo "5. Batch Image Download"
    echo "6. Exit"

    read -p "Enter your choice (1-6) : " choice
    case $choice in
        1) single_file ;;
        2) multiple_file ;;
        3) resume_download ;;
        4) website_mirror ;;
        5) batch_image_download ;;
        6) echo "Exiting Wget Automation Menu."
            break
            ;;
        *) echo "Invalid choice. Please enter a number between 1 and 6." ;;
    esac
done

