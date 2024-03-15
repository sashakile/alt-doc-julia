using Documenter
using alt-doc

makedocs(
    sitename = "alt-doc",
    format = Documenter.HTML(),
    modules = [alt-doc]
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
#=deploydocs(
    repo = "<repository url>"
)=#
