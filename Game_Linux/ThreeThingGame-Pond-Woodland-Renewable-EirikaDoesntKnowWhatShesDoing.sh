#!/bin/sh
echo -ne '\033c\033]0;ThreeThingGame-Pond-Woodland-Renewable-EirikaDoesntKnowWhatShesDoing\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/ThreeThingGame-Pond-Woodland-Renewable-EirikaDoesntKnowWhatShesDoing.x86_64" "$@"
