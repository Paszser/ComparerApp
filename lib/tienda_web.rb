module ComparerApp
    require_relative 'videojuego.rb'
    require 'date'
    require 'time'
    
        ##
        # Esta clase representa la información asociada a una tienda
    
        class TiendaWeb
    
            attr_reader :nombre
    
            ##
            # Crea una nueva tienda web con las siguientes propiedades
            # 
            # Parámetros:
            # +nombre+:: nombre de la tienda web 
            # +fechas_rebajas+:: fechas de rebajas históricas a partir de las cuales realizar una predicción 
            # +black_friday+:: fecha del próximo Black Friday 
            # +navidad+:: fecha del comienzo de la próxima Navidad      
            def initialize(nombre, fechas_rebajas, black_friday, navidad)
                @nombre = nombre
                @fechas_rebajas = fechas_rebajas
                @black_friday = black_friday
                @navidad = navidad
            end
            
            # Realiza una predicción de la próxima época de rebajas aproximada a partir de datos previos.
            # 
            # * Las fechas pasadas se igualan al mismo año para la correcta realización de la media.
            # * Se separan según las dos épocas pertinentes, antes y después del verano.
            # * Se obtiene la media de ambas y se devuelven.
            
            def prediccion()
                
                predic = []
                contador_pre_verano = 0
                contador_post_verano = 0
                media_post_verano = 0
                media_pre_verano = 0
                
                for fecha in @fechas_rebajas do
                    fecha = Time.new(Time.now.year, fecha.month, fecha.day)
                    if fecha.month <= 6
                        media_pre_verano += fecha.to_f
                        contador_pre_verano += 1
                    else
                        media_post_verano += fecha.to_f
                        contador_post_verano += 1
                    end
                end

                predic.append(media_pre_verano = Time.at((media_pre_verano)/contador_pre_verano))
                predic.append(media_post_verano = Time.at((media_post_verano)/contador_post_verano))
    
                return predic
            end
        end
    end
