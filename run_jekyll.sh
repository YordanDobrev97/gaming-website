#!/bin/bash

jekyll serve --watch &
JEKYLL_PID=$!

stop_jekyll() {
    kill $JEKYLL_PID
}

trap stop_jekyll EXIT

jekyll build --watch
