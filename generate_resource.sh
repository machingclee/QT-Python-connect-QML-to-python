#!/bin/bash

conda activate pyside6 && pyside6-rcc -o resource.py qml.qrc && echo "resource.py has been generated"

read -p "Press enter to quit"