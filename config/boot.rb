# Set up gems listed in the Gemfile-MRI19.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile-MRI19', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])
