function Install_all_dependencies()
    darwin.dtw.remove_any("dependencies")
    os.execute("mkdir -p dependencies")
    local SINGLE_FILE_DEPENDENCIES = {
        "curl -L https://github.com/OUIsolutions/C-Cli-Entry/releases/download/0.001/CliEntry.h -o dependencies/CliEntry.h ",
        "curl -L https://github.com/OUIsolutions/DoTheWorld/releases/download/v8.002/doTheWorld.h -o dependencies/doTheWorld.h",
        "curl -L https://github.com/OUIsolutions/LuaCEmbed/releases/download/v0.780/LuaCEmbed.h -o dependencies/LuaCEmbed.h "
    }
    for _, comand in ipairs(SINGLE_FILE_DEPENDENCIES) do
        os.execute(comand)
    end
end
