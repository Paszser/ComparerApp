require 'tienda_web'

# Realiza test para comprobar que devuelve la fecha más próxima posterior al día presente.
#
# * Comenzamos a partir de cualquier dato Hash, en este caso una variable, o un json.
# * Se llama al método que predice la fecha.
# * Se comprueba y espera que la fecha predecida se encuentre entre el día presente y todas las fechas próximas dentro del hash,
#   lo que significa que es la más cercana a "today"
# * Se obvian las fechas anteriores al día presente.

describe 'Prediccion' do
    it 'devuelve la prediccion de la próxima época de rebajas' do
        @fechas_rebajas = {
            "Black Friday" => Date.parse('2021-11-27'),
            "Navidad" => Date.parse('2022-01-09'),
            "PreVerano" => Date.parse('2022-05-22') 
        }

        tienda = ComparerApp::TiendaWeb.new(ComparerApp)
        predicted = tienda.prediccion(@fechas_rebajas)
        date_predicted = Date.parse(predicted.values.to_s)
        today = Date.today
    
        @fechas_rebajas.each do |(llave, valor)|
            if(valor > today)
                expect(date_predicted).to be_between(today, valor)
            end
        end
    end
end