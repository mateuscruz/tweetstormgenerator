# frozen_string_literal: true

class TweetStorm
  THREAD_SEPARATOR = ("|\n" * 2).freeze

  private_constant :THREAD_SEPARATOR

  # @param tweets [Array<Tweet>]
  def initialize(tweets)
    @tweets = tweets
  end

  def to_thread_string
    return tweets.first.to_thread_string if size == 1

    thread_strings = tweets.each.with_index.map do |tweet, index|
      tweet.to_thread_string + "#{TweetStorms::SUFFIX_BUILDER.call(index, size)}\n"
    end

    thread_strings.join(THREAD_SEPARATOR)
  end

  def size
    tweets.size
  end

  private

  attr_reader :tweets
end
