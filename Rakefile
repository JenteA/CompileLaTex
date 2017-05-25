require 'rubygems'
require 'bundler/setup'

require 'rspec'
require 'rake'
require 'rspec/core/rake_task'

RSpec::rake::RakeTask.new(:spec) do |t|
t.patern = 'spec/**/*_spec.rb'
t.rspec_opts = '--format specdoc'
t.rcov = true
end
