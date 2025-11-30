# simple-http

A lightweight Docker container that runs a simple HTTP server using Python 3.

## Description

This project provides a minimal Alpine Linux-based Docker image that serves files over HTTP on port 8080. It uses Python's built-in `http.server` module, making it perfect for quick file sharing, testing, or serving static content.

## Features

- **Lightweight**: Built on Alpine Linux for minimal image size
- **Simple**: No configuration required - just run and serve
- **Up-to-date**: Automatically upgrades Alpine packages during nightly build
- **Port 8080**: Serves HTTP traffic on port 8080

## Usage

### Building the Image

```bash
docker build -t simple-http .
```

### Running the Container

Serve files from the current directory:

```bash
docker run -p 8080:8080 -v $(pwd):/app simple-http
```

Serve files from a specific directory:

```bash
docker run -p 8080:8080 -v /path/to/your/files:/app simple-http
```

### Accessing the Server

Once running, access the HTTP server at:
```
http://localhost:8080
```

## Docker Hub

Pull the pre-built image (if available):

```bash
docker pull ghcr.io/glisignoli/simple-http
```

## Configuration

The container exposes port 8080 and sets `/app` as the working directory. Mount any directory to `/app` to serve its contents.

## Requirements

- Docker

## License

This project is maintained by glisignoli@gmail.com

## Use Cases

- Quick file sharing across local network
- Testing web applications
- Serving static websites
- Development and debugging
- Temporary file hosting
