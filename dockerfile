FROM ubuntu:20.04
WORKDIR /home
#Download of pending issues
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y git sudo make cmake && git clone https://github.com/DanteCampos/FlexRIC_Experiment
#Installation
RUN bash FlexRIC_Experiment/init.sh
