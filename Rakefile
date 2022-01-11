require 'rspec/core/rake_task'
desc "Task que instala las dependencias pertinentes,"
task :installdeps do
    puts "Instalando las dependencias..."
    exec "bundle install"
end

desc "Task para lanzar la aplicación y cerciorarnos de su funcionamiento,"
RSpec::Core::RakeTask.new(:test) do |t|
    t.pattern = "spec/*_spec.rb"
end

desc "Task para revisar la sintaxis de los archivos del proyecto,"
task :check do
    puts "Realizando comprobaciones de sintaxis..."
    exec "ruby -c ./lib/*"
end

desc "Task para lanzar la imagen del docker,"
task :docker do
    puts "Lanzando la imagen..."
    exec "docker run -t -v `pwd`:/app/test paszser/comparerapp"
end