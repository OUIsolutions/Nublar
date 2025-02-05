function Create_all_docker_images()
    os.execute("docker build -t nublar_windows -f  images/windows.Dockerfile .")
    os.execute("docker build -t nublar_linux  -f images/linux.Dockerfile .")
end
