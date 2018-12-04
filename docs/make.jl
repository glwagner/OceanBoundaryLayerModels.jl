using Pkg
Pkg.activate("..")

using Documenter, OceanBoundaryLayerModels

makedocs(
   modules = [OceanBoundaryLayerModels],
   doctest = false, 
     clean = true,
 checkdocs = :all,
    format = :html,
   authors = "Gregory L. Wagner",
  sitename = "OceanBoundaryLayerModels.jl",
     pages = Any[
              "Home" => "index.md",
              "Physics" => "physics.md",
              "Modeling" => "numerics.md",
              "Boundary layer models" => Any[
                "models/pricewellerpinkel.md"],
              "DocStrings" => Any[
                    "man/types.md",
                    "man/functions.md"]
                    ]
)

deploydocs(
       repo = "github.com/glwagner/OceanBoundaryLayerModels.jl.git",
     target = "build",
      julia = "1.0",
     osname = "linux",
       deps = nothing,
       make = nothing
 )
