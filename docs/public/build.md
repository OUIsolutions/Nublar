
## Building From source
for building from source,  type
```bash
curl -L https://github.com/OUIsolutions/Nublar/releases/download/0.001/nublar.c -o nublar.c &&
gcc nublar.c -o nublar.out
```

### If you don't have Darwin, use this command to download it locally.
```bash
curl -L -o darwin https://github.com/OUIsolutions/Darwin/releases/download/0.017/darwin.out
chmod +x darwin
```

### If you want to install dependencies locally for development, do:
```bash
./darwin run_blueprint build/ --mode folder install_dependencies
```

### Building From Docker
for building from docker,you must have [darwin](https://github.com/OUIsolutions/Darwin) installed on version 0.017 and docker/podman installed,clone the repo  then type
```bash
./darwin run_blueprint build/ --mode folder Create_all_docker_images  build_linux_from_docker build_windows_from_docker
```

### Building From Native
#### for building from native,you must have  [darwin](https://github.com/OUIsolutions/Darwin) installed on version 0.017,gcc  and **mingw** installed,clone the repo  then type

##### For Windows
```bash
./darwin run_blueprint build/ --mode folder build_windows_local
```
##### For Linux
```bash
./darwin run_blueprint build/ --mode folder  build_linux_local
```
