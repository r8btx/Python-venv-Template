@echo off
pushd %~dp0
setlocal enabledelayedexpansion

if exist ".venv\" (
	call ".venv/Scripts/activate.bat"
	pip install -r requirements.txt
	cls
	python run_app.py
) else (
	python -m venv .venv
	call ".venv/Scripts/activate.bat"
	python -m pip install --upgrade pip
	pip install -r requirements.txt
	cls
	python run_app.py
)

pause >nul