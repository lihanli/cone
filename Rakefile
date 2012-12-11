task :test do
  Dir.chdir 'test'
  `bundle`
  system 'rake test'
end

task :build do
  system 'gem build cone.gemspec'
  `mkdir -p build`
  `mv *.gem build`
end