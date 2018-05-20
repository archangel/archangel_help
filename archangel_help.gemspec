# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)

require "archangel_help/version"

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = "archangel_help"
  s.version     = ArchangelHelp::VERSION
  s.authors     = ["David Freerksen"]
  s.homepage    = "https://github.com/archangel/archangel_help"
  s.summary     = "Summary of ArchangelHelp."
  s.description = "Description of ArchangelHelp."
  s.license     = "MIT"

  s.files = Dir[
    "{app,config,db,lib}/**/*",
    "MIT-LICENSE",
    "Rakefile",
    "README.md"
  ]

  s.add_dependency "archangel", "< 1.0"

  s.add_dependency "deface", "~> 1.3"
end
