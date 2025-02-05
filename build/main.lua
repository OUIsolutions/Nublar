function main()
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
    for _, action in ipairs(REQUIRE_MAIN_AMALGAMATION) do
        if darwin.argv.one_of_args_exist(action) then
            Main_amalgamation_build()
        end
    end
end
