# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano-jekyll/version'

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-jekyll'
  spec.version       = CapistranoJekyll::VERSION
  spec.authors       = ['neiro']
  spec.email         = ['neiro.mail@gmail.com']

  spec.summary       = 'Capistrano integration for Jekyll'
  spec.description   = 'Capistrano deploy tool integration for Jekyll static
  website generator'
  spec.homepage      = 'https://github.com/ne1ro/capistrano-jekyll'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split "\x0"
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'capistrano', '~> 3.0', '>= 3.0.0'

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '~> 0.29.0'
end
