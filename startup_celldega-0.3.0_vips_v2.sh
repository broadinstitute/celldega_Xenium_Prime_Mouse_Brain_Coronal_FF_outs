#!/bin/bash
apt update
apt install -y libvips
apt install -y libvips-tools
apt install -y libvips-dev

sudo -E -u jupyter /opt/conda/bin/pip install celldega[pre]==0.3.0  --user

# Enable nbextension for classic Jupyter Notebook
jupyter nbextension install --py anywidget --user
jupyter nbextension enable --py anywidget --user