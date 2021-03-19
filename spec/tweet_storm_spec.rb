# frozen_string_literal: true

require_relative '../tweet_storm_generator'

describe TweetStorm do
  describe '#to_thread_string' do
    subject { described_class.new(tweets).to_thread_string }

    let(:tweets) do
      [
        Tweet.new('Sustainalytics'),
        Tweet.new('is the coolest!')
      ]
    end

    it 'returns a human readable twitter thread' do
      is_expected.to eq <<~TEXT
        | Sustainalytics 1/2
        |
        |
        | is the coolest! 2/2
      TEXT
    end
  end
end
