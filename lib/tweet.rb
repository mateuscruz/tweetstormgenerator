# frozen_string_literal: true

class Tweet
  MAX_SIZE = 140.freeze

  attr_reader :text

  def initialize(text)
    @text = text

    raise TweetTooBig.new(text) unless size <= MAX_SIZE
  end

  def to_s
    text.to_s
  end

  def to_thread_string
    each_line.map { |line| '| ' + line }.join("\n")
  end

  private

  def size
    text.size
  end

  def each_line
    text.each_line
  end
end
