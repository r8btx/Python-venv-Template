#!/bin/bash
cd "$(dirname "$0")"

if [ -d ".venv" ]
then
    source .venv/bin/activate
    pip install -r requirements.txt
    clear
    python3 run_app.py
else
    python3 -m venv .venv
    source .venv/bin/activate
    python3 -m pip install --upgrade pip
    pip install -r requirements.txt
    clear
    python3 run_app.py
fi

read -rp ""