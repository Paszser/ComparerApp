module ComparerApp
    ##
    # Esta clase representa la información asociada a un videojuego

    class Videojuego
    
        attr_reader :nombre, :genero
        attr_accessor :valoracion, :tiendas_distribuidoras, :precios_videojuego
        
        ##
        # Crea un nuevo videojuego con las siguientes propiedades
        #
        # Parámetros:
        # +nombre+:: título del videojuego 
        # +genero+:: genero al que pertenece el videojuego (accion, accion-aventura, aventura, carreras, cartas, deportes, educativos, estrategia, 
        #                      guerra, logica, lucha, preguntas, concursos, rol, terror, simulacion,realidad_aumentada)
        # +valoracion+:: puntuación media de los usuarios
        # +tiendas_distribuidoras+:: lista de tiendas que venden el videojuego
        # +precios+:: lista de elementos clave-valor (nombre de la tienda - precio)

        def initialize(nombre, genero, desarrollador, plataformas_disponibles, valoracion, f_lanzamiento, idiomas, tiendas_distribuidoras, precios_videojuego)
            @nombre = nombre
            @genero = genero
            @valoracion = valoracion
            if !(@valoracion.between?(0,10))
                raise StandardError, "El valor de la valoración debe estar en el rango 0-10"
            end
            @tiendas_distribuidoras = tiendas_distribuidoras
            @precios_videojuego = precios_videojuego
        end

        def get_lista_precios()
            precios_videojuego = self.precios_videojuego
            precios_videojuego = precios_videojuego.sort_by{|tienda, precio| precio}.to_h

            return precios_videojuego
        end
    end
end
