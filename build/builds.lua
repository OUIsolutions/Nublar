function Main_amalgamation_build()
    darwin.silverchain.generate({
        src = "src",
        project_short_cut = "nublar",
        tags = { "dependencies", "consts", "macros", "types", "globals", "fdeclare", "fdef" },
        implement_main = true,
        main_name = "main.c"
    })
    local max_content = 10000
    local max_recursion = 100
    amalgamation = darwin.camalgamator.generate_amalgamation("src/main.c", max_content, max_recursion)
    darwin.dtw.write_file("nublar.c", amalgamation)
end
