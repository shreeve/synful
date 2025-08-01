# encoding: utf-8

Gem::Specification.new do |s|
  s.name        = "synful"
  s.version     = `grep -m 1 '^\s*@version' bin/synful | cut -f 2 -d '"'`
  s.author      = "Steve Shreeve"
  s.email       = "steve.shreeve@gmail.com"
  s.summary     = "A " +
  s.description = "Ruby utility that shows syntax highlighted code in a browser"
  s.homepage    = "https://github.com/shreeve/synful"
  s.license     = "MIT"
  s.files       = `git ls-files`.split("\n") - %w[.gitignore]
  s.executables = `cd bin && git ls-files .`.split("\n")
  s.required_ruby_version = ">= 3.0"
  s.add_runtime_dependency "puma"           , "~> 6.0"
  s.add_runtime_dependency "sinatra"        , "~> 4.0"
  s.add_runtime_dependency "rack-protection", "~> 4.0"
  s.add_runtime_dependency "rack-session"   , "~> 2.0"
  s.add_runtime_dependency "rouge"          , "~> 4.0"
end
