FROM tensorflow/tensorflow:latest-gpu 

COPY requirements.txt /requirements.txt

RUN apt-get update && apt-get install -y graphviz

# Install python requirements
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

EXPOSE 8888

# Launch Jupyter notebook
CMD ["jupyter", "notebook", "--allow-root", "--port=8888", "--ip=0.0.0.0", "--no-browser"]
