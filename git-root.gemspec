# frozen_string_literal: true

require_relative 'lib/git-root/version'

Gem::Specification.new do |spec|
    spec.name     = 'git-root'
    spec.version  = GitRoot::VERSION
    spec.authors  = ['TGWolf']
    spec.email    = ['rubygems@wolfsoftware.com']

    spec.summary  = 'A super simple gem to get the root directory for any given git repository.'
    spec.homepage = 'https://github.com/DevelopersToolbox/git-root'
    spec.license  = 'MIT'

    spec.required_ruby_version = '>= 2.6.0'

    spec.metadata['rubygems_mfa_required'] = 'true'
    spec.metadata['homepage_uri'] = spec.homepage
    spec.metadata['source_code_uri'] = spec.homepage

    spec.files = Dir['lib/**/*', 'LICENSE.md', 'README.md']

    spec.bindir = 'exe'
    spec.executables = Dir.glob('exe/*').map { |f| File.basename(f) }

    spec.add_development_dependency 'rake', '~> 13.0'
    spec.add_development_dependency 'rbs', '~> 2.8.0'
    spec.add_development_dependency 'reek', '~> 6'
    spec.add_development_dependency 'rspec', '~> 3.0'
    spec.add_development_dependency 'rubocop', '~> 1.50.0'
    spec.add_development_dependency 'rubocop-packaging', '~> 0.5.2'
end
