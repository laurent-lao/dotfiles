#!/bin/bash

CONFIG_FILE="$HOME/.config/waybar/beets-tagger/config.env"

# Source configuration file
if [ ! -f "$CONFIG_FILE" ]; then
    echo "Configuration file not found. Please create a 'config.env' file from the 'config.env.example' template."
    exit 1
fi

source "$CONFIG_FILE"

# Get the currently playing song's file path from MPD
CURRENT_SONG_TITLE=$(mpc --format "%title%" current)

if [ -z "$CURRENT_SONG_TITLE" ]; then
    echo "No song is currently playing."
    exit 1
fi

CURRENT_SONG_ALBUM=$(mpc --format "%album%" current)
CURRENT_SONG_ARTIST=$(mpc --format "%artist%" current)

echo "Currently playing song: $CURRENT_SONG_ARTIST - $CURRENT_SONG_ALBUM - $CURRENT_SONG_TITLE"

# Set the query for the `beet modify` command
BEETS_QUERY="title:\"$CURRENT_SONG_TITLE\" album:\"$CURRENT_SONG_ALBUM\" artist:\"$CURRENT_SONG_ARTIST\""

echo "Query for current song: $BEETS_QUERY"


# Run `beet modify` on the NAS via SSH
ssh -t "$SERVER_USER@$SERVER_HOST" \
    "$DOCKER_PATH exec -it -u $BEETS_USER $BEETS_CONTAINER beet modify liked=1 $BEETS_QUERY"

if [ $? -eq 0 ]; then
    echo "Song successfully tagged as liked in Beets!"
else
    echo "Failed to tag the song in Beets."
fi
