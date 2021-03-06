require 'tienda_web'

# Realiza test para comprobar que devuelve la fecha más próxima posterior al día presente.
#
# * Comenzamos a partir de cualquier dato Hash, en este caso una variable, o un json.
# * Se llama al método que predice la fecha.
# * Se comprueba y espera que la fecha predecida se encuentre en los meses de Abril/Mayo para las fechas pre-verano,
#   y los entre los meses de Septiembre/Octubre para la época post-verano.


describe 'Prediccion' do
    it 'devuelve la prediccion de la próxima época de rebajas' do
        @black_friday = Time.parse('2022-11-25')
        @navidad = Time.parse('2022-12-24')
        @fecha_rebajas = [Time.parse('2021-09-05'), Time.parse('2021-04-15'), Time.parse('2020-09-25'), Time.parse('2020-04-19'),
                          Time.parse('2019-08-31'), Time.parse('2019-05-07'), Time.parse('2018-10-03'), Time.parse('2018-03-29')]

        tienda = ComparerApp::TiendaWeb.new(ComparerApp, @fecha_rebajas, @black_friday, @navidad)
        predicted_date = tienda.prediccion()
        
        for fecha in predicted_date
            if fecha.month <= 6
                expect(fecha.month).to be_between(4,5)
            else
                expect(fecha.month).to be_between(9,10)
            end
        end
    end
end

