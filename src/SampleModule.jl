module SampleModule

using PyCall
using Conda

include("Submodel/PyInterface.jl")
using .PyInterface

"""
Some nice documentation here.

# Examples
```jldoctest
julia> a = [1 2; 3 4]
2×2 Array{Int64,2}:
 1  2
 3  4
```
"""
greet() = print("Hello World!")


function initPyInterface()
    Conda.pip_interop(true, Conda.ROOTENV)
    Conda.pip("install", "ema_workbench")
    Conda.pip("install", "scipy")
    Conda.pip("install", "altair")
    Conda.add("ipyparallel")
    Conda.pip("install", "SALib")
    Conda.pip("install", "platypus-opt")
end

#include("Submodel/Submodel.jl")
#using .SubModel

#greetSub()
#greetSub2()

end # module
