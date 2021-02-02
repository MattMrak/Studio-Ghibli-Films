Gem::Specification.new do |spec|
  spec.name        = 'studio-ghibli-films'
  spec.version     = "1.2.3"
  spec.date        = '01-07-2021'
  spec.summary     = "Studio Ghibli Films"
  spec.description = "Provides a list of Studio Ghibli films along with information for each movie."
  spec.authors     = ["Matthew Mrakovcic"]
  spec.email       = 'matthewmrakovcic@gmail.com'
  spec.files       = ["lib/studio_ghibli_films", "lib/studio_ghibli_films/api", "lib/studio_ghibli_films/cli", "lib/studio_ghibli_films/film", "lib/studio_ghibli_films/version", "config/environment"]
  spec.homepage    = 'https://github.com/MattMrak/studio-ghibli-films'
  spec.license     = 'MIT'
  spec.executables << 'ruby bin/run'

  spec.add_development_dependency 'bundler', '~> 2.2', '>= 2.2.4'
  spec.add_development_dependency 'json', '~> 2.5', '>= 2.5.1'
  spec.add_development_dependency 'pry', '~> 0.13.1'
  spec.add_development_dependency 'tty-prompt', '~> 0.23.0'
  spec.add_development_dependency 'lolize', '~> 0.0.3'
end