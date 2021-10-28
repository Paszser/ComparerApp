require 'date'

module ComparerApp
    ##
    # Esta clase representa la información asociada a un cliente

    class Cliente

        attr_reader :nombre, :f_registro
        attr_accessor :generos_gustados, :lista_comprados, :lista_deseos

        ##
        # Crea un nuevo cliente con las siguientes propiedades
        # 
        # Parámetros:
        # +nombre+:: nombre y apellidos del usuario
        # +f_nac+:: fecha de nacimiento del usuario
        # +generos_gustados+:: generos gustadps por el usuario (accion, accion-aventura, aventura, carreras, cartas, deportes, educativos, estrategia, 
        #                      guerra, logica, lucha, preguntas, concursos, rol, terror, simulacion,realidad_aumentada)
        def initialize(nombre, f_nac, generos_gustados)
            @nombre = nombre
            @f_registro = DateTime.now
            @generos_gustados = generos_gustados
            @lista_comprados = Array.new    
            @lista_deseos = Array.new       
        end
    end
end
