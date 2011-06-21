require 'rubygems'

## because psych is broken in 1.9.2 (breaks node reference)
require 'yaml'
YAML::ENGINE.yamler= 'syck'  


# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])
