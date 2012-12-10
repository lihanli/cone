require File.expand_path("../lib/your_gem/version", __FILE__)

Gem::Specification.new do |gem|
  gem.name     = 'cone'
  gem.version  = '0.0.1'
  gem.summary  = "Rails client side url helpers"
  gem.author   = 'Lihan Li'
  gem.email    = 'frankieteardrop@gmail.com'
  gem.homepage = 'http://github.com/lihanli/cone'

  gem.add_dependency('rake')
  #gem.add_development_dependency('rspec', [">= 2.0.0"])

  gem.files = Dir['Rakefile', '{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*'] & `git ls-files -z`.split("\0")
end