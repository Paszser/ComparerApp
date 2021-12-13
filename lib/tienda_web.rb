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
            def initialize(nombre)
                @nombre = nombre
            end
            
            # Realiza una predicción de la próxima época de rebajas aproximada a partir del día que se realiza dicha consulta.
            # 
            # * Las fechas pasadas respecto a la actual se desechan.
            # * Se ordenan las fechas por comodidad de trabajo
            # * Entre las que se consideran aptas, se devuelve la más cercana al día presente.
            
            def prediccion(fechas_rebajas)
                
                predic = []
                contador_pre_verano = 0
                contador_post_verano = 0
                media_post_verano = 0
                media_pre_verano = 0
                
                for fecha in fechas_rebajas do
                    fecha = Time.new(2022, fecha.month, fecha.day)
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
