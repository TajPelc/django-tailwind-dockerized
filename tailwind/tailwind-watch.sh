#!/bin/bash
ls -al ../static/src
npx tailwindcss -i ../static/src/input.css -o ../static/src/output.css --watch

echo "Empty output"
tail -f /dev/null