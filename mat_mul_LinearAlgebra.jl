# Importar los paquetes necesarios

using LinearAlgebra
# using BenchmarkTools

#=   # Función para multiplicar dos matrices cuadradas
function multiplicar_matrices(A::Matrix{T}, B::Matrix{T}) where T
    N = size(A, 1)  # Suponemos que ambas matrices son de tamaño NxN
    C = zeros(T, N, N)  # Creamos una matriz de ceros para almacenar el resultado
    for i in 1:N
        for j in 1:N
            for k in 1:N
                C[i, j] += A[i, k] * B[k, j]
            end
        end
    end
    return C
end
=#

# Ejemplo de uso
N = 4000  # Dimensión de las matrices cuadradas
A = rand(N, N)  # Matriz A de tamaño NxN con números aleatorios
B = rand(N, N)  # Matriz B de tamaño NxN con números aleatorios

# Medición del tiempo usando el operador nativo de Julia (*)
println("Tiempo usando LinearAlgebra (*):")
@time A * B;


