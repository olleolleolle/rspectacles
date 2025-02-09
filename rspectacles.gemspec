# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'rspectacles/version'

Gem::Specification.new do |s|
  s.name        = 'rspectacles'
  s.version     = RSpectacles::VERSION
  s.authors     = ['Michael Wheeler']
  s.email       = ['mwheeler@g2crowd.com']
  s.homepage    = 'https://github.com/g2crowd/rspectacles'
  s.summary     = %q{Visualize rspec test running in the browser}
  s.description = %q{Visualize rspec test running in the browser}
  s.license     = 'MIT'

  s.rubyforge_project = 'rspectacles'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  # specify any dependencies here; for example:
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'pry'
  s.add_dependency 'rake'
  s.add_dependency 'pg'
  s.add_dependency 'sinatra-activerecord'
  s.add_dependency 'puma'
  s.add_dependency 'sinatra', '>= 1.4.5'
  s.add_dependency 'rack', '>= 2.0.6'
  s.add_dependency 'httparty'
end
