module ComparerApp
    ##
    # Esta clase representa la información asociada a un videojuego

    class Videojuego
    
        attr_reader :nombre, :genero
        attr_accessor :valoracion, :tiendas_distribuidoras
        
        ##
        # Crea un nuevo videojuego con las siguientes propiedades
        #
        # Parámetros:
        # +nombre+:: título del videojuego 
        # +genero+:: genero al que pertenece el videojuego (accion, accion-aventura, aventura, carreras, cartas, deportes, educativos, estrategia, 
        #                      guerra, logica, lucha, preguntas, concursos, rol, terror, simulacion,realidad_aumentada)
        # +valoracion+:: puntuación media de los usuarios
        # +tiendas_distribuidoras+:: lista de tiendas que venden el videojuego
        def initialize(nombre, genero, desarrollador, plataformas_disponibles, valoracion, f_lanzamiento, idiomas, tiendas_distribuidoras)
            @nombre = nombre
            @genero = genero
            @valoracion = valoracion
            if (@valoracion.between(0,10))
                raise StandardError, "El valor de la valoración debe estar en el rango 0-10"
            end
            @tiendas_distribuidoras = tiendas_distribuidoras
        end
    end
end
