$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "samurai/tasks/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "samurai_tasks"
  s.version     = Samurai::Tasks::VERSION
  s.authors     = ["abo-elleef"]
  s.email       = ["a.abaoelllef@gmail.com"]
  s.homepage    = ""
  s.summary     = "Summary of Samurai::Tasks."
  s.description = "Description of Samurai::Tasks."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.1.rc4"

  s.add_dependency "deface"
end
