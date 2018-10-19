#!/usr/bin/env bash
printf "$(date)\n"


full_data="./../"
stable_installation="./../../StableVersion"

rm -r -f "$stable_installation/Data/Packages/User/PackagesManager.cache"
rm -r -f "$stable_installation/Data/Packages/User/PackagesManager.last-run"

get_file_path () {
   printf "%s" "$(cd $(dirname "$1") && pwd -P)/$(basename "$1")"
}

get_directory_path () {
   printf "%s" "$(cd $(dirname "$1") && pwd -P)/"
}

sync_directory_path () {
    package_name="$1"
    printf "%s\n" "$(get_file_path "$stable_installation/Data/Packages/$package_name")"
    mkdir -p "$stable_installation/Data/Packages/$package_name"
    rsync -r --exclude .git --exclude __pycache__ --exclude *.pyc "$full_data/Packages/$package_name/" \
            "$stable_installation/Data/Packages/$package_name/"
}

printf "\n"
printf "Syncing folders...\n"

# sync_directory_path "DebugTools"
sync_directory_path "StudioChannel"
sync_directory_path "ChannelManager"
sync_directory_path "PackagesManager"

printf "\n"
printf "Done syncing!\n"
