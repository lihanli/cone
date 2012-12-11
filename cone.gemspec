Gem::Specification.new do |gem|
  gem.name     = 'cone'
  gem.version  = '0.0.1'
  gem.summary  = "Rails client side url helpers"
  gem.author   = 'Lihan Li'
  gem.email    = 'frankieteardrop@gmail.com'
  gem.homepage = 'http://github.com/lihanli/cone'

  gem.add_dependency('coffee-rails')

  gem.files = Dir['Rakefile', '{bin,lib,man,test,spec}/**/*', 'README*', 'MIT-LICENSE'] & `git ls-files -z`.split("\0")
end