task :test do
  Dir.chdir 'test'
  `bundle`
  system 'bundle exec rake test'
end

task :build do
  system 'gem build cone.gemspec'
  `rm -rf build`
  `mkdir build`
  `mv *.gem build`
end