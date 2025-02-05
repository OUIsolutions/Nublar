function main()
    if darwin.argv.one_of_args_exist("install_dependencies") then
        Install_all_dependencies()
    end
end
