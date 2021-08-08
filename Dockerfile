FROM blackarchlinux/blackarch
LABEL version="1.0"
LABEL description="NEST is Docker Container For OSINT. Very basic programs such as Tor and SNS OSINT tools are included."

RUN :> /etc/pacman.d/blackarch-mirrorlist
RUN echo 'Server = https://download.nus.edu.sg/mirror/blackarch/$repo/os/$arch' >> /etc/pacman.d/blackarch-mirrorlist
RUN pacman -Syu --noconfirm &&\
    pacman -S sudo buster cardpwn instagramosint twint phoneinfoga tor proxychains tor-router nipe --noconfirm --overwrite='*'
    

ARG USERNAME=nest
ARG GROUPNAME=nest
ARG UID=1000
ARG GID=1000
ARG PASSWORD=user
RUN groupadd -g $GID $GROUPNAME && \
    useradd -m -s /bin/bash -u $UID -g $GID -G wheel $USERNAME && \
    echo $USERNAME:$PASSWORD | chpasswd && \
    echo "$USERNAME   ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER $USERNAME
WORKDIR /home/$USERNAME/
