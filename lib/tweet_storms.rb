# frozen_string_literal: true

module TweetStorms
  SUFFIX_BUILDER = -> (current, all) { " #{current + 1}/#{all}" }.freeze
end
