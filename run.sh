docker run -it --rm --gpus all -v "$(pwd)"/notebooks:/tf/notebooks -p 8888:8888 gpu-jupyter:latest
