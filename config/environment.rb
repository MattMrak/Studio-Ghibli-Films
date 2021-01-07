require 'net/http'
require 'open-uri'
require 'json'

require_relative '../lib/best-gardens-around-the-world/api.rb'
require_relative '../lib/best-gardens-around-the-world/cli.rb'
require_relative '../lib/best-gardens-around-the-world/garden.rb'
require_relative '../lib/best-gardens-around-the-world/version.rb'

require 'bundler/setup'
Bundler.require(:default, :development) 