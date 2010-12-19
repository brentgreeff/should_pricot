require 'rubygems'
require 'active_support'
require 'active_support/test_case'
require 'test/unit'

Rails.env = 'test'
Rails.root ||= File.dirname(__FILE__) + '/../../../..'

# ENV['RAILS_ENV'] = 'test'
# ENV['RAILS_ROOT'] ||= File.dirname(__FILE__) + '/../../../..'

require File.expand_path(File.join(Rails.root, 'config/environment.rb'))

ActiveRecord::Base.logger = Logger.new(File.dirname(__FILE__) + "/debug.log")

require File.dirname(__FILE__) + '/../rails/init.rb'
