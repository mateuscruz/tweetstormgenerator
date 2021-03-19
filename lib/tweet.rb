# frozen_string_literal: true

class Tweet
  MAX_SIZE = 140.freeze

  attr_reader :text

  def initialize(text)
    @text = text

    raise TweetTooBig.new(text) unless size <= MAX_SIZE
  end

  def size
    text.size
  end

  def to_s
    text.to_s
  end
end
