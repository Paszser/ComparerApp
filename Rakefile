desc "Task que instala las dependencias pertinentes,"
task :installdeps do
    puts "Instalando las dependencias..."
    exec "bundle install"
end

desc "Task para lanzar la aplicación y cerciorarnos de su funcionamiento,"
task :test do
    puts "Realizando los test pertinentes..."
end

desc "Task para revisar la sintaxis de los archivos del proyecto,"
task :check do
    puts "Realizando comprobaciones de sintaxis..."
    exec "ruby -c ./lib/*"
end