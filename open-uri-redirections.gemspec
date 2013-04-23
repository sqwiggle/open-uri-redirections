# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'open-uri-redirections/version'

Gem::Specification.new do |gem|
  gem.name          = "open-uri-redirections"
  gem.version       = OpenUriRedirections::VERSION
  gem.authors       = ["Jaime Iniesta", "Gabriel Cebrian"]
  gem.email         = ["jaimeiniesta@gmail.com"]
  gem.description   = %q{OpenURI patch to allow redirections between HTTP and HTTPS}
  gem.summary       = %q{OpenURI patch to allow redirections between HTTP and HTTPS}
  gem.homepage      = "https://github.com/sqwiggle/open-uri-redirections"

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(spec)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rspec',   '~> 2.13.0'
  gem.add_development_dependency 'fakeweb', '~> 1.3.0'
  gem.add_development_dependency 'rake',    '~> 10.0.3'
end
