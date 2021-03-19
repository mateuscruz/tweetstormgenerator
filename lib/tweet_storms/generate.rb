# frozen_string_literal: true

module TweetStorms
  class Generate
    def self.call(*args)
      new(*args).call
    end

    def initialize(input)
      @input = input
    end

    def call
      return single_tweet if fit_a_single_tweet?

      tweets = chunks.map(&to_tweet)

      TweetStorm.new(tweets)
    end

    private

    attr_reader :input

    def to_tweet
      proc { |thread_text| Tweet.new(thread_text) }
    end

    def single_tweet
      TweetStorm.new([Tweet.new(input)])
    end

    def fit_a_single_tweet?
      input.size <= Tweet::MAX_SIZE
    end

    def chunks_size
      chunks.size
    end

    def chunks
      tweets_without_counters = chars.each_slice(Tweet::MAX_SIZE).map(&:join)
      size                    = tweets_without_counters.size
      suffix                  = SUFFIX_BUILDER.call(size, size)

      chars.each_slice(Tweet::MAX_SIZE - suffix.size).map(&:join)
    end

    def chars
      input.chars
    end
  end
end
