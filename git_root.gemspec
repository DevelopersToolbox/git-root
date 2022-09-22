# frozen_string_literal: true

require_relative "lib/git_root/version"

Gem::Specification.new do |spec|
  spec.name     = 'git_root'
  spec.version  = GitRoot::VERSION
  spec.authors  = ["Tim Gurney aka Wolf"]
  spec.email    = ["wolf@tgwolf.com"]

  spec.summary  = "A super simple gem to get the root directory for any given git repository"
  spec.homepage = "https://github.com/DevelopersToolbox/git_root"
  spec.license  = "MIT"

  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files = Dir["lib/**/*", "LICENSE.md", "README.md"]

  spec.bindir = 'exe'
  spec.executables = Dir.glob("exe/*").map{ |f| File.basename(f) }

  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop-packaging", "~> 0.5.2"
end
