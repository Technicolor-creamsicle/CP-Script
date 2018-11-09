title="Select example"
prompt="Pick an option:"
options=("Keep" "Delete" "Examine")

echo "$title"
PS3="$prompt "
select opt in "${options[@]}" "Quit"; do 

    case "$REPLY" in

    1 ) echo "You picked $opt which is to Keep the files";;
    2 ) echo "You picked $opt which is to delete the files";rm *.mp3;;
    3 ) echo 'you picked $opt which is to look thru all files found"; rm -i *.mp3;;

    * ) echo "Invalid option. Try another one.";continue;;

    esac
    break
