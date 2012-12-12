Gem::Specification.new do |gem|
  gem.name     = 'cone'
  gem.version  = '0.0.3'
  gem.summary  = "Rails client side url helpers"
  gem.author   = 'Lihan Li'
  gem.email    = 'frankieteardrop@gmail.com'
  gem.homepage = 'http://github.com/lihanli/cone'
  gem.files    = `git ls-files`.split("\n")

  gem.add_dependency('coffee-rails')
end