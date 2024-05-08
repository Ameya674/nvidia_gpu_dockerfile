# Nvidia Docker 

This Docker image enables access to Nvidia GPUs within a Docker container.

## Image Creation

Build the image using the following command:

```bash
  docker build -t <image_name> <path_of_dockerfile>
```

## Container Creation

Create the container using the following command:

```bash
  docker run -d --name <container_name> <image_name>
```

## Using the container

Enter and use the container using the following command:

```
docker exec -it --gpus all --name <container_name> /bin/bash
```
This command allows you to enter the container, and the ```/bin/bash``` at the end permits access via the shell.
