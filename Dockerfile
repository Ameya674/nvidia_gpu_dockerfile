# Use official CUDA image for ubuntu as base image
FROM nvidia/cuda:11.0.3-base-ubuntu20.04

# Install necessary packages for LLVM installation
RUN apt-get update && apt-get install -y \
    lsb-release \
    wget \
    software-properties-common \
    gnupg

# Download and run the LLVM convenience script to set up the repositories
RUN wget https://apt.llvm.org/llvm.sh
RUN chmod +x llvm.sh
RUN ./llvm.sh 16

# Install LLVM and related packages
RUN apt-get update && apt-get install -y \
    libclang-16-dev \
    clang-tools-16 \
    libomp-16-dev \
    llvm-16-dev \
    lld-16

# Install additional packages 
RUN apt-get update && apt-get install -y \
    lsb-release \
    wget \
    software-properties-common \
    gnupg \
    python3 \
    cmake \
    libboost-all-dev \
    git \
    build-essential

# Set the entrypoint to keep the container running
ENTRYPOINT ["tail", "-f", "/dev/null"]
