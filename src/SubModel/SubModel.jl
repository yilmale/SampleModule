module SubModel
    export greetSub,greetSub2
    using SampleModule

    greetSub() = print("Submodel test")
    greetSub2() = SampleModule.greet()

end
