module ComparerApp
    ##
    # Esta clase representa la información asociada a una tienda

    class TiendaWeb

        attr_reader :nombre
        attr_accessor :precio_videojuegos

        ##
        # Crea una nueva tienda web con las siguientes propiedades
        # 
        # Parámetros:
        # +nombre+:: nombre de la tienda web
        # +precio_videojuegos+:: lista de elementos clave-valor (nombre del videojuego - precio)             
        def initialize(nombre, precio_videojuegos)
            @nombre = nombre
            @precio_videojuegos = precio_videojuegos
        end
    end
end
