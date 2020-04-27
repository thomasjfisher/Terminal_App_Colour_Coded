#!/bin/bash

echo "Installing gems"
sleep 1
# install dependencies from Gemfile
bundle install
sleep 1
echo "Launching Colour Coded"
sleep 1
# run application
ruby colour_coded_main_menu.rb

