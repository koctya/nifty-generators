Gem::Specification.new do |s|
  s.name        = "nifty-generators"
  s.version     = "0.4.8"
  s.author      = "Ryan Bates", "Kurt Landrus"
  s.email       = "klandrus@gmail.com"
  s.homepage    = "http://github.com/koctya/nifty-generators"
  s.summary     = "A collection of useful Rails generator scripts."
  s.description = "A collection of useful Rails generator scripts for scaffolding, layout files, authentication, and more."

  s.files        = Dir["{lib,test,features,rails_generators}/**/*", "[A-Z]*"]
  s.require_path = "lib"

  s.add_development_dependency 'rspec-rails', '~> 2.11.0'
  s.add_development_dependency 'cucumber', '~> 1.2.1'
  s.add_development_dependency 'rails', '~> 3.1'
  s.add_development_dependency 'bcrypt-ruby', '~> 3.0.0'
  s.add_development_dependency 'sqlite3', '~> 1.3.5'

  s.rubyforge_project = s.name
  s.required_rubygems_version = ">= 1.3.4"
end
