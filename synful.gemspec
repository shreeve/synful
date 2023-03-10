# encoding: utf-8

Gem::Specification.new do |s|
  s.name        = "synful"
  s.version     = "1.1.1"
  s.author      = "Steve Shreeve"
  s.email       = "steve.shreeve@gmail.com"
  s.summary     =
  s.description = "Ruby utility that shows syntax highlighted code in your browser"
  s.homepage    = "https://github.com/shreeve/synful"
  s.license     = "MIT"
  s.files       = `git ls-files`.split("\n") - %w[.gitignore]
  s.executables = `cd bin && git ls-files .`.split("\n")
  s.add_runtime_dependency "rouge", "~> 4.0"
  s.add_runtime_dependency "sinatra", "~> 3.0"
  s.add_runtime_dependency "webrick", "~> 1.8"
end
