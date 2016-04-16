#!/bin/sh
${SIMULATOR}lame3.70/lame small.wav output_small.mp3 2>&1 >/dev/null |  grep 'COUNT' | awk '{print $3}'
