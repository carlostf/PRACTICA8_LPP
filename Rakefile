$:.unshift File.dirname(__FILE__) + 'lib'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

desc "Ejecutar tests"
task :spec do
sh "rspec spec/ppt_spec.rb --format documentation"
end

desc "Ejecutar bin"
task :bin do
sh "ruby bin/O_Matrices.rb"
end


desc "Ejecutar test con formato html"
task :thtml do
sh "rspec spec/ppt_spec.rb --format html > resultados.html"
end
