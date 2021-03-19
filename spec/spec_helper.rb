# frozen_string_literal: true

require 'simplecov'

SimpleCov.start

RSpec.configure do |config|
  config.color     = true
  config.formatter = :documentation
  config.order     = :random
end
