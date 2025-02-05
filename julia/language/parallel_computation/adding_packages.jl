# import package
julia> using Pkg

# package status
julia> Pkg.status()
    Status `C:\Users\praveen\.julia\environments\v1.0\Project.toml`
  [7876af07] Example v0.5.1

# add CSV package
julia> Pkg.add("CSV")
  Updating registry at `C:\Users\praveen\.julia\registries\General`
  Updating git-repo `https://github.com/JuliaRegistries/General.git`
    Fetching: [===>                                     ]  6.3 %  

# alternately
# or you can use the Pkg REPL mode by pressing ] (similar to ?, help mode, and ;, shell mode):

(v1.0) pkg> add "CSV"


using CSV, DataFrames, BenchmarkTools
iris = CSV.read(joinpath(dirname(pathof(DataFrames)),"..","test/data/iris.csv"))


