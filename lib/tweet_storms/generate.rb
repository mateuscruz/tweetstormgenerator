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

    def chunks
      tweets_without_counters = twitter_sequence_for(Tweet::MAX_SIZE)
      max_size                = tweets_without_counters.map(&:size).max
      size                    = tweets_without_counters.size
      suffix                  = SUFFIX_BUILDER.call(size, size)

      twitter_sequence_for(max_size - suffix.size)
    end

    def twitter_sequence_for(limit)
      SplitWords.new(words: words, limit: limit).call
    end

    def words
      input.split(/\s+/)
    end
  end
end
