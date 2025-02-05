function Main_amalgamation_build()
    darwin.silverchain.generate({
        src = "src",
        project_short_cut = "nublar",
        tags = { "dependencies", "consts", "macros", "types", "globals", "fdeclare", "fdef" },
        implement_main = true,
        main_name = "main.c"
    })

    local max_content = 100000000
    local max_recursion = 1000
    amalgamation = darwin.camalgamator.generate_amalgamation("src/main.c", max_content, max_recursion)
    darwin.dtw.write_file("release/nublar.c", amalgamation)
end
