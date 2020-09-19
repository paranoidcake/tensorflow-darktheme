FROM tensorflow/tensorflow:latest-gpu-jupyter

### Python libraries

## Tensorflow Datasets

RUN pip install tensorflow-datasets

## Pandas

RUN pip install pandas

### Dark theme / Nbxtensions

# Install dependencies
RUN pip install jupyter_contrib_nbextensions jupyterthemes

# Configure theme and install extensions
RUN jt -t monokai -f fira -nfs 11 -N -kl -cursc r -T -lineh 150
RUN jupyter contrib nbextension install --symlink

RUN jupyter nbextension enable notify/notify
RUN jupyter nbextension enable scroll_down/main
RUN jupyter nbextension enable freeze/main
RUN jupyter nbextension enable execute_time/ExecuteTime
RUN jupyter nbextension enable move_selected_cells/main
RUN jupyter nbextension enable autosavetime/main
RUN jupyter nbextension enable code_prettify/code_prettify
RUN jupyter nbextension enable table_beautifier/main
RUN jupyter nbextension enable hinterland/hinterland
RUN jupyter nbextension enable spellchecker/main
RUN jupyter nbextension enable toggle_all_line_numbers/main

### Startup script to fix inline plots

# Create directory and startup file

RUN mkdir -p $HOME/.ipython/profile_default/startup
RUN touch $HOME/.ipython/profile_default/startup/00_startup.py

# Append plot settings
RUN echo -e "from jupyterthemes import jtplot" >> $HOME/.ipython/profile_default/startup/00_startup.py
RUN echo -e "jtplot.style(theme='monokai', context='notebook', ticks=True, grid=False)" >> $HOME/.ipython/profile_default/startup/00_startup.py

COPY jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py
