$:.push File.expand_path("../lib", __FILE__)

require "ux/version"

Gem::Specification.new do |s|
  s.name        = "ux"
  s.version     = Ux::VERSION
  s.authors     = ["Andrii Seleznov"]
  s.email       = ["andrii.seleznov@gmail.com"]
  s.homepage    = "http://oca-rating.herokuapp.com"
  s.summary     = "Engine for ux testing"
  s.description = "Engine for ux testing"

  s.files = Dir["{app,config,db,lib}/**/*", "Rakefile", "README.rdoc"]

  s.add_dependency 'rails', '~> 4.1.6'
  s.add_dependency 'pg', '0.17.1'
  s.add_dependency 'haml-rails'
end
