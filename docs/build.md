
## Building From source
for building from source,  type
```bash
curl -L https://github.com/OUIsolutions/Darwin/releases/download/0.017/darwin.c -o darwin.c &&
gcc darwin.c -o darwin.out
```
### Building From Docker
for building from docker,you must have darwin installed on version 0.017 and docker/podman installed,clone the repo  then type
```bash
darwin run_blueprint build/ --mode folder Create_all_docker_images  build_linux_from_docker build_windows_from_docker
```

### Building From Native
for building from native,you must have darwin installed on version 0.016,gcc  and **mingw** installed,clone the repo  then type

```bash
darwin run_blueprint build/ --mode folder  build_linux_local  build_windows_local
```
