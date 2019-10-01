using Pkg
Pkg.activate(@__DIR__)
Pkg.instantiate()

using Example
using BenchmarkTools

const SUITE = BenchmarkGroup()

SUITE["greet"] = @benchmarkable Example.greet()
