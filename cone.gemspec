Gem::Specification.new do |gem|
  gem.name     = 'cone'
  gem.version  = '0.1.0'
  gem.summary  = 'Rails client side URL helpers'
  gem.author   = 'Lihan Li'
  gem.email    = 'frankieteardrop@gmail.com'
  gem.homepage = 'http://github.com/lihanli/cone'

  gem.add_dependency('coffee-rails')

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ["lib"]
end
