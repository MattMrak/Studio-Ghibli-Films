require_relative '../lib/best_gardens_around_the_world/version.rb'

Gem::Specification.new do |spec|
  spec.name        = 'best-gardens-around-the-world'
  spec.version     = BestGardensAroundTheWorld::VERSION
  spec.date        = '01-06-2021'
  spec.summary     = "Best Gardens Around The World"
  spec.description = "Provides details on 50 of the best gardens around the world"
  spec.authors     = ["Matthew Mrakovcic"]
  spec.email       = 'matthewmrakovcic@gmail.com'
  spec.files       = ["lib/best_gardens_around_the_world.rb", "lib/best_gardens_around_the_world/cli.rb", "lib/best_gardens_around_the_world/api.rb", "lib/best_gardens_around_the_world/garden.rb", "config/environment.rb"]
  spec.homepage    = ''
  spec.license     = 'MIT'
  spec.executables << 'best-gardens-around-the-world'

  spec.add_development_dependency 'bundler', '~> 2.2', '>= 2.2.4'
  spec.add_development_dependency 'rake', '~> 13.0', '>= 13.0.3'
  spec.add_development_dependency 'rspec', '~> 3.10.0'
  spec.add_development_dependency 'json', '~> 2.5', '>= 2.5.1'
  spec.add_development_dependency 'pry', '~> 0.13.1'
  spec.add_development_dependency 'awesome_print', '~> 1.8.0'
  spec.add_development_dependency 'tty-prompt', '~> 0.23.0'
end