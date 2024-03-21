push!(LOAD_PATH,"../src/")
using Documenter
using AltDoc

makedocs(
    sitename = "altdoc",
    format = Documenter.HTML(),
    modules = [AltDoc]
)
DocMeta.setdocmeta!(AltDoc, :DocTestSetup, :(using AltDoc); recursive=true)

makedocs(;
    modules=[AltDoc],
    authors="contributors",
    sitename="AltDoc.jl",
    format=Documenter.HTML(;
        canonical="https://sashakile.github.io/alt-doc-julia",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/sashakile/alt-doc-julia.jl",
    devbranch="main",
)
