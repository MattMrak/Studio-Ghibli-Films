require 'net/http'
require 'open-uri'
require 'json'

require_relative '../lib/studio_ghibli_films/api.rb'
require_relative '../lib/studio_ghibli_films/cli.rb'
require_relative '../lib/studio_ghibli_films/films.rb'
require_relative '../lib/studio_ghibli_films/version.rb'

require 'bundler/setup'
Bundler.require(:default, :development) 