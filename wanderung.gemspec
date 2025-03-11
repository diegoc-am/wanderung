# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wanderung/version'

Gem::Specification.new do |spec|
  spec.name          = 'wanderung'
  spec.version       = Wanderung::VERSION
  spec.authors       = ['Diego Camargo']
  spec.email         = ['dicamargov@gmail.com']

  spec.summary       = 'Wanderung allows you to manage several migrations for several SQL databases'
  spec.homepage      = 'https://github.com/belfazt/wanderung'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/belfazt/wanderung'
  spec.metadata['changelog_uri'] = 'https://github.com/belfazt/wanderung/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'bundler-audit'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rubocop', '0.75.0'
  spec.add_development_dependency 'sqlite3', '~> 1.4'

  spec.add_runtime_dependency 'sequel', '~> 5.25'
end
