#!/usr/bin/bash

# somehow get project name

if [[ $# -eq 1 ]]; then
    SELECTED=$1
else
    exit 1 
fi

DIR_PATH="$HOME/1/$SELECTED"

if [[ -d "$DIR_PATH" ]]; then
    echo "Directory $SELECTED existis, cant create"
    exit 1
fi

echo "Creating dir $DIR_PATH"

mkdir $DIR_PATH || {
    echo "Failed to create directory $DIR_PATH"
    exit 1
}

mkdir "$DIR_PATH/public"
mkdir "$DIR_PATH/public/input"
mkdir "$DIR_PATH/public/output"
mkdir "$DIR_PATH/src"

cat << EOF > "$DIR_PATH/requirements.txt"
pynvim
ipython
matplotlib
nbconvert
pandas
psycopg2-binary
sqlalchemy
python-dotenv
openpyxl
EOF

echo ".env" > "$DIR_PATH/.gitignore"

cp "$HOME/1/db_utils/.env" "$DIR_PATH/"

tmux_running=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
    tmux new-session -s $SELECTED -c $DIR_PATH
    exit 0
fi

if ! tmux has-session -t=$SELECTED 2> /dev/null; then
    tmux new-session -ds $SELECTED -c $DIR_PATH
fi

tmux switch-client -t $SELECTED

