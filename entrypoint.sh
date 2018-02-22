#!/bin/sh

cd /skill/
./ngrok http 5000 > /dev/null &
sleep 4
python app.py