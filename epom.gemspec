$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "epom/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "epom"
  s.version     = Epom::VERSION
  s.authors     = ["Pedro Quintero"]
  s.email       = ["pecuerre@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Epom."
  s.description = "TODO: Description of Epom."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "sqlite3"
end
