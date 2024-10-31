#!/bin/bash

sudo -E -u jupyter /opt/conda/bin/pip install celldega==0.4.0  --user

# Enable nbextension for classic Jupyter Notebook
jupyter nbextension install --py anywidget --user
jupyter nbextension enable --py anywidget --user
