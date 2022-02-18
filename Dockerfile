FROM rust:latest

RUN apt update \
 && apt install -y \
      clang \
 && apt autoremove -y \
 && apt autoclean \
 && apt clean \
 && apt autoremove

WORKDIR /usr/src/ispc-tex-rs

# Extract ISPC binary and install it
RUN wget -O ispc-v1.17.0-linux.tar.gz https://github.com/ispc/ispc/releases/download/v1.17.0/ispc-v1.17.0-linux.tar.gz \
 && tar -xvzf ispc-v1.17.0-linux.tar.gz \
 && cd ispc-v1.17.0-linux \
 && cp ./bin/ispc /usr/local/bin/ispc \
 && chmod +x /usr/local/bin/ispc

ENTRYPOINT ["/bin/bash"]