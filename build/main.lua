function main()
    darwin.dtw.remove_any("release")
    if darwin.argv.one_of_args_exist("install_dependencies") then
        Install_all_dependencies()
    end
    if darwin.argv.one_of_args_exist("Create_all_docker_images") then
        Create_all_docker_images()
    end

    local REQUIRE_MAIN_AMALGAMATION = {
        "build_c_amalgamation",
        "build_linux_local",
        "build_windows_from_ming64",
        "build_linux_from_docker",
        "build_windows_from_docker"
    }
    for _, action in ipairs(REQUIRE_MAIN_AMALGAMATION) do
        if darwin.argv.one_of_args_exist(action) then
            Main_amalgamation_build()
        end
    end
    if darwin.argv.one_of_args_exist("build_windows_local") then
        os.execute("i686-w64-mingw32-gcc release/nublar.c -o release/nublar.exe")
    end
    if darwin.argv.one_of_args_exist("build_linux_local") then
        os.execute("gcc release/nublar.c -o release/nublar.out")
    end
    if darwin.argv.one_of_args_exist("build_linux_from_docker") then
        os.execute("docker run  --volume $(pwd)/release:/release:z nublar_linux ")
    end
    if darwin.argv.one_of_args_exist("build_windows_from_docker") then
        os.execute("docker run  --volume $(pwd)/release:/release:z nublar_windows ")
    end
end
