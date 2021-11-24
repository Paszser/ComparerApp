require 'videojuego'

describe 'Videojuego' do
    it 'devuelve lista ordenada de precios' do
        @precios = {
            "Game" => 30,
            "Instant Gaming" => 5, 
            "PSStore" => 25, 
            "Amazon" => 20
        }

        videoj = ComparerApp::Videojuego.new("Uncharted 4", "Acción", "Naughty Dog", "Play Station", 5, 2016, "Español", "Game", @precios)
        lista = videoj.get_lista_precios()
        all_values = lista.values
        
        index = 0
        lista.each do |(llave, valor)|
            if index < (lista.length-1) 
                expect(valor).to be <= all_keys[index+1]
            end
            index += 1
        end
    end
end
