FROM registry.fedoraproject.org/fedora-minimal:40
RUN microdnf install --nodocs --setopt install_weak_deps=0 -y git tar sudo shadow-utils git python3 \
    && microdnf clean all -y
RUN useradd vscode -G wheel
USER vscode
WORKDIR /home/vscode
COPY ./config/bashrc ./.bashrc
COPY ./config/inputrc ./.inputrc
