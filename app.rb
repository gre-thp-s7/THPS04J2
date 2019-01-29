
#Les lignes suivantes dans app.rb vont te permettre d'éviter les require de gem :
# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;)
require 'bundler'
require 'pry'
Bundler.require
#Les lignes suivantes dans app.rb vont te permettre d'appeler facilement les autres fichiers de classe
$:.unshift File.expand_path("./../lib", __FILE__)


 require 'lib/.....rb' #normalement plus besoin de _relative avec le expand_path, a tester
