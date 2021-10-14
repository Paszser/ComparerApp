module ComparerApp
    ##
    # Esta clase representa la información asociada a un videojuego

    class Videojuego
    
        attr_reader :nombre, :genero, :desarrollador, :f_lanzamiento, :idiomas
        attr_accessor :valoracion, :plataformas_disponibles, :tiendas_distribuidoras
        
        ##
        # Crea un nuevo videojuego con las siguientes propiedades
        #
        # Parámetros:
        # +nombre+:: título del videojuego 
        # +genero+:: genero al que pertenece el videojuego (accion, accion-aventura, aventura, carreras, cartas, deportes, educativos, estrategia, 
        #                      guerra, logica, lucha, preguntas, concursos, rol, terror, simulacion,realidad_aumentada)
        # +desarrollador+:: programador o compañía que ha elaborado el videojuego
        # +plataformas_disponibles+:: medios en los que está soportado el  videojuego (PC, Smartphone, Tablet, PlayStation, Wii, Xbox, Nintendo)
        # +valoracion+:: puntuación media de los usuarios
        # +f_lanzamiento+:: fecha en la que el videojuego se comercializó
        # +idiomas+:: idiomas disponibles
        # +tiendas_distribuidoras+:: lista de tiendas que venden el videojuego
        def initialize(nombre, genero, desarrollador, plataformas_disponibles, valoracion, f_lanzamiento, idiomas, tiendas_distribuidoras)
            @nombre = nombre
            @genero = genero
            @desarrollador = desarrollador
            @valoracion = valoracion
            if (@valoracion.between(0,10))
                raise StandardError, "El valor de la valoración debe estar en el rango 0-10"
            end
            @plataformas_disponibles = plataformas_disponibles
            @f_lanzamiento = f_lanzamiento
            @idiomas = idiomas
            @tiendas_distribuidoras = tiendas_distribuidoras
        end
    end
end
