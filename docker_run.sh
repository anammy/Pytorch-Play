WORK_DIR=/home
DATA_DIR=/home/data
sudo docker run --gpus all -it \
--name Pytorch-Play \
--ipc=host \
-v $PWD:$WORK_DIR \
-v ~/Documents/Datasets:$DATA_DIR \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-e DISPLAY=$DISPLAY \
-w $WORK_DIR \
-p 8888:8888 \
pytorch-custom:1.2
