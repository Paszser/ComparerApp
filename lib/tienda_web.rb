module ComparerApp
require_relative 'videojuego.rb'
    ##
    # Esta clase representa la información asociada a una tienda

    class TiendaWeb

        attr_reader :nombre

        ##
        # Crea una nueva tienda web con las siguientes propiedades
        # 
        # Parámetros:
        # +nombre+:: nombre de la tienda web            
        def initialize(nombre)
            @nombre = nombre
        end
    end
end
