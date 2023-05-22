# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule t8code_extern_p4est_jll
using Base
using Base: UUID
using LazyArtifacts
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("t8code_extern_p4est")
JLLWrappers.@generate_main_file("t8code_extern_p4est", UUID("7e7acab7-e9ce-5916-bef5-e1c7d8d2cd05"))
end  # module t8code_extern_p4est_jll
