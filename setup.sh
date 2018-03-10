
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $HOME
find $DIR -mindepth 1 -depth -type d -printf "%P\n" | grep -v git | while read dir; do mkdir -p "$dir"; done
find $DIR -type f -printf "%P\n" | grep -v 'git\|setup.sh' | while read file; do ln -s "$DIR/$file" "$file"; done

