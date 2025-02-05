function Install_all_dependencies()
    darwin.dtw.remove_any("dependencies")
    os.execute("mkdir -p dependencies")
    local SINGLE_FILE_DEPENDENCIES = {
        "https://github.com/OUIsolutions/C-Cli-Entry/releases/download/0.001/CliEntry.h",
        "https://github.com/OUIsolutions/DoTheWorld/releases/download/v8.001/doTheWorld.h"
    }
    print("chamou")
    for _, lib in ipairs(SINGLE_FILE_DEPENDENCIES) do
        print(lib)
    end

    os.execute("curl -L ")
end
