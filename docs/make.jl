push!(LOAD_PATH,"../src/")
using Documenter, Inflation

makedocs(
    modules=[Inflation],
    format = Documenter.HTML(prettyurls = false),
    build   = "build",
    sitename="Inflation.jl"
)
deploydocs(
    repo = "github.com/dominic-smith/Inflation.jl.git",
    branch = "gh-pages",
    target = "build",
    make = nothing
)
