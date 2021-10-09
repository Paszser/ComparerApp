module ComparerApp
    class Cliente

        attr_accessor :nombre, :edad, :f_registro, :generos_gustados, :lista_comprados, :lista_deseos

        # Constructor
        def initialize(nombre, edad, f_registro, generos_gustados)
            @nombre = nombre
            @edad = edad
            @f_regsitro = f_registro
            @generos_gustados = generos_gustados
            @lista_comprados = Array.new    # Videojuegos
            @lista_deseos = Array.new       # Videojuegos
        end

        # Método para añadir un juego comprado a la lista de comprados
        def comprar_juego(juego)
            @lista_comprados.push(juego)
        end

        # Método para añadir un juego deseado a la lista de deseos (videojeugos gustados)
        def aniadir_deseo(juego)
            @lista_deseos.push(juego)
        end

    end
end
