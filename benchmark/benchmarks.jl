using Pkg
tempdir = mktempdir()
Pkg.activate(tempdir)
Pkg.develop(PackageSpec(path=joinpath(@__DIR__, "..")))
Pkg.add(["BenchmarkTools", "PkgBenchmark"])
#Pkg.resolve()

using Example
using BenchmarkTools

const SUITE = BenchmarkGroup()

SUITE["greet"] = @benchmarkable Example.greet()
