#!/usr/bin/env bash
# A bash script to setup the environment for project.

## Install and/or upgrade pip.
python3 -m pip install --upgrade pip

# Install virtualenv.
pip install virtualenv

# Create virtual environment in project root folder.
virtualenv -p python nba_shot_chart_env

# Activate virtualenv.
source nba_shot_chart_env/bin/activate

# Install necessary dependencies.
pip install ipykernel
pip install jupyter
pip install pandas
pip install matplotlib
pip install requests
pip install nba-api

# Save dependencies to requirements file.
pip freeze > ./Setup/requirements.txt

# Create custom kernel.
python3 -m ipykernel install --user --name nba_shot_chart_env --display-name "nba-shot-chart-kernel"

# Open Jupyter Notebooks.
jupyter notebook
