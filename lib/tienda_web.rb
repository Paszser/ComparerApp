module ComparerApp
require_relative 'videojuego.rb'
require 'date'

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
        
        # Realiza una predicción de la próxima época de rebajas aproximada a partir del día que se realiza dicha consulta.
        # 
        # * Las fechas pasadas respecto a la actual se desechan.
        # * Se ordenan las fechas por comodidad de trabajo
        # * Entre las que se consideran aptas, se devuelve la más cercana al día presente.
        
        def prediccion(fechas_rebajas)
            
            predic = {}
            fechas_rebajas.each do |(llave, valor)|
                if(valor > Date.today)
                    predic[llave] = valor
                end
            end

            predic = predic.sort_by{|nombre, fecha| fecha}.to_h

            all_values = predic.values
            fecha_mas_reciente = all_values.first

            index = 0
            prediccion_final = {}
            
            predic.each do |(llave, valor)|
                if (index<predic.length-1) and (valor<=fecha_mas_reciente)
                    prediccion_final[llave] = valor
                end
                index += 1
            end

            return prediccion_final
        end
    end
end
