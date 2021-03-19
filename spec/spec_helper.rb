# frozen_string_literal: true

require 'simplecov'

SimpleCov.start do
  add_filter '/spec/'
end

RSpec.configure do |config|
  config.color     = true
  config.formatter = :documentation
  config.order     = :random
end
