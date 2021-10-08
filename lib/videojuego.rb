module ComparerApp
    class Videojuego
    
        attr_accessor :nombre, :genero, :precio, :desarrollador, :rebajas, :plataformas, :portada, :valoracion, :f_salida, :idiomas, :tiendas_disponibles, :precio
        
        # Constructor 
        def initialize(nombre, genero, precio, desarrollador, rebajas, plataformas, portada, valoracion, f_salida, idiomas, tiendas_disponibles)
            @nombre = nombre
            @genero = genero
            @precio = precio
            @desarrollador = desarrollador
            @rebajas = rebajas
            @plataformas = plataformas
            @portada = portada
            @valoracion = valoracion
            @f_salida = f_salida
            @idiomas = idiomas
            @tiendas_disponibles = tiendas_disponibles
        end
    end
end