# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mfind_rubocop_rspec'

Gem::Specification.new do |spec|
  spec.name          = 'mfind-rubocop-rspec'
  spec.version       = MfindRuboCopRSpec::VERSION
  spec.authors       = ['mFind IT']
  spec.license       = 'Nonstandard'
  spec.email         = ['development@mfind.pl']
  spec.date          = '2019-07-13'
  spec.summary       = 'mFind rubocop configuration for Ruby apps using RSpec'
  spec.homepage      = 'https://github.com/mfind-project/mfind-rubocop-rspec'
  spec.files         = ['lib/mfind_rubocop_rspec.rb', 'default.yml', '.rubocop.yml']
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.6.0'
  spec.add_dependency 'rubocop', '~> 1.45.1'
  spec.add_dependency 'rubocop-performance', '~> 1.16.0'
  spec.add_dependency 'rubocop-rspec', '~> 2.18.1'
end
