function main()
    print("chamou")

    if darwin.argv.one_of_args_exist("install_dependencies") then
        Install_all_dependencies()
    end
    local REQUIRE_MAIN_AMALGAMATION = {
        "build_c_amalgamation",
        "build_linux_local",
        "build_windows_from_ming64",
        "build_linux_from_docker",
        "build_windows_from_docker"
    }
    if darwin.argv.one_of_args_exist(REQUIRE_MAIN_AMALGAMATION) then
        Main_amalgamation_build()
    end
end
