module SampleModule

greet() = print("Hello World!")

include("Submodel/Submodel.jl")
using .SubModel

greetSub()
greetSub2()

end # module
