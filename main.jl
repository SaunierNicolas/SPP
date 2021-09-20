# =========================================================================== #
# Compliant julia 1.x

# Using the following packages
using JuMP, GLPK
using LinearAlgebra
using Printf

include("loadSPP.jl")
include("greedyConstruction.jl")
include("eligibleSolution.jl")

# =========================================================================== #

# Setting the data
fname = "/home/nicolas/Travail/Metaheuristique/DM1/SPP_DM/Data/didactic.dat"  # path for a standard config on macOS
cost, matrix = loadSPP(fname)
C, A = loadSPP(fname)

#Greedy construction
@time x, z = GreedyConstruction(C, A)
@printf("z(xInit) = %d \n\n",z)

#Greedy Improved
@time xbest, zbest = GreedyImproved(C, A, x, z)
@printf("z(xBest) = %d \n\n",zbest)