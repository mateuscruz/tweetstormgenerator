# frozen_string_literal: true

require_relative 'tweet_storms/generate'

module TweetStorms
  SUFFIX_BUILDER = ->(current, all) { " #{current + 1}/#{all}" }.freeze
end
