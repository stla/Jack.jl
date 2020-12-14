push!(LOAD_PATH,"../src/")

using Documenter
using Jack

makedocs(
    sitename = "Jack.jl",
    authors = "Stéphane Laurent",
    format = Documenter.HTML(;
        prettyurls = get(ENV, "CI", "false") == "true",
        canonical = "https://stla.github.io/Jack.jl",
        assets = String[],
    ),
    modules = [Jack],
    pages = ["Documentation"  => "index.md"],
    repo = "https://github.com/stla/Jack.jl/blob/{commit}{path}#{line}"
)

deploydocs(;
    branch = "gh-pages",
    devbranch = "main",
    repo = "github.com/stla/Jack.jl",
)
