push!(LOAD_PATH,"../src/")
using Documenter
using AltDoc

makedocs(
    sitename = "altdoc",
    format = Documenter.HTML(),
    modules = [AltDoc]
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
#=deploydocs(
    repo = "<repository url>"
)=#
