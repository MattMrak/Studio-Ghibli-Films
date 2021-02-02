require 'net/http'
require 'open-uri'
require 'json'
require 'awesome_print'
require 'pry'
require 'colorize'

require_relative '../lib/studio_ghibli_films/api'
require_relative '../lib/studio_ghibli_films/cli'
require_relative '../lib/studio_ghibli_films/version'
require_relative '../lib/studio_ghibli_films/film'

require 'bundler/setup'
Bundler.require(:default, :development) 