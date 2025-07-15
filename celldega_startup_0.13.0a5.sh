#!/bin/bash

sudo -E -u jupyter /opt/conda/bin/pip install anywidget  --user
sudo -E -u jupyter /opt/conda/bin/pip install celldega==0.13.0a5  --user

# Enable nbextension for classic Jupyter Notebook
jupyter nbextension install --py anywidget --user
jupyter nbextension enable --py anywidget --user
