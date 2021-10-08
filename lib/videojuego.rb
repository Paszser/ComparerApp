module ComparerApp
    class Videojuego
    
        attr_accessor :nombre, :genero, :desarrollador, :plataformas, :portada, :valoracion, :f_salida, :idiomas, :tiendas_disponibles
        
        # Constructor 
        def initialize(nombre, genero, desarrollador, plataformas, portada, valoracion, f_salida, idiomas, tiendas_disponibles)
            @nombre = nombre
            @genero = genero
            @desarrollador = desarrollador
            @plataformas = plataformas
            @portada = portada
            @valoracion = valoracion
            @f_salida = f_salida
            @idiomas = idiomas
            @tiendas_disponibles = tiendas_disponibles
        end
    end
end