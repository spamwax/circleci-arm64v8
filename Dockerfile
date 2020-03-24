FROM arm64v8/debian:stretch-slim

SHELL ["/bin/bash", "-c"]
# RUN sudo apt-get update;\
#     sudo apt-get install file
COPY qemu-aarch64-static /usr/bin
COPY qemu-arm-static /usr/bin

COPY rmate /usr/bin/  
# RUN export QEMU_LD_PREFIX=/usr/aarch64-linux-gnu

# RUN file /usr/bin/rmate
CMD ["/usr/bin/qemu-aarch64-static", "/usr/bin/rmate", "--help", "||", "echo"]
