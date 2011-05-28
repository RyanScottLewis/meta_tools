require 'rubygems'

require 'rake'

require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs.concat ['lib', 'test']
  t.pattern = 'test/**/test_*.rb'
  t.verbose = false
end

task :default => :test
