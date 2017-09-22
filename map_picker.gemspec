$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "map_picker/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "map_picker"
  s.version     = MapPicker::VERSION
  s.authors     = ["Muntasim Ahmed"]
  s.email       = ["ahmed2tul@gmail.com"]
  s.homepage    = ""
  s.summary     = "works to provide an easy to use Google Maps interface for displaying and setting geographic co-ordinates"
  s.description = "It works without any dependency to any third party library"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.1.0"

end
