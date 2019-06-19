require_relative './db_helper'

ENV['ENVIRONMENT'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'capybara'
require 'capybara/rspec'
require 'rspec'

Capybara.app = BookmarkApp

require 'simplecov'
require 'simplecov-console'

RSpec.configure do |config|
  config.before(:each) do
    test_db_connect
  end

  config.include Capybara::DSL
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end


SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
])
SimpleCov.start


