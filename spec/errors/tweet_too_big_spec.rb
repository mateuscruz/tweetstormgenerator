# frozen_string_literal: true

require_relative '../../lib/errors/tweet_too_big'

describe TweetTooBig do
  it 'is a sublcass of StandardError' do
    expect(described_class).to be < StandardError
  end

  describe '#message' do
    subject       { described_class.new(message).message }
    let(:message) { 'Sustainalytics is the coolest!' }

    it 'returns a meaningul error message' do
      is_expected.to eq("Tweet \"Sustainalytics is the coolest!\" has 30 characters. Max allowed is 140.")
    end
  end
end
