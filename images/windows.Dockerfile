FROM debian:latest

RUN apt-get update && \
    apt-get install -y \
    mingw-w64 \
    curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


CMD ["sh", "-c", "cd release && i686-w64-mingw32-gcc --static nublar.c -o nublar.exe"]
