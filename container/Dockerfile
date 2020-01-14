# FROM nvcr.io/nvidia/pytorch:19.09-py3
# FROM ubuntu:18.04
FROM pytorch/pytorch:1.2-cuda10.0-cudnn7-devel

ARG DEBIAN_FRONTEND=noninteractive

ARG WORKDIR=/home
WORKDIR $WORKDIR

RUN apt-get update &&\
    apt-get install -y \
    software-properties-common

RUN apt-get remove vim-tiny

RUN apt-get update &&\
    apt-get install -y \
    vim \
    tmux \
    wget \
    curl \
    git \
    python3-pip \
    libsm6 \
    libxext6 \
    libxrender-dev

RUN pip3 install --upgrade pip
RUN pip3 install opencv-python==4.1.2.30

# --------------------------------------
# Install vim IDE personal setup - Replace with your own or comment out
RUN git clone https://github.com/anammy/Docker_Setup.git /home/Docker_Setup/
RUN git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
RUN ln /home/Docker_Setup/vimrc ~/.vimrc
RUN ln /home/Docker_Setup/tmux.conf ~/.tmux.conf
RUN vim +PluginInstall +qall
RUN apt-get update &&\
    apt-get install -y \ 
    build-essential \
    cmake \
    python3-dev
RUN python3 ~/.vim/bundle/YouCompleteMe/install.py --clang-completer
RUN python3 ~/.vim/bundle/YouCompleteMe/install.py --clangd-completer
RUN echo 'Vim installation complete!'
# --------------------------------------

CMD ["bash"]

EXPOSE 8888
