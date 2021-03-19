# frozen_string_literal: true

require_relative '../tweet_storm_generator'

describe TweetStorms do
  describe 'SUFFIX_BUILDER' do
    subject       { described_class::SUFFIX_BUILDER.call(current, all) }
    let(:current) { 0 }
    let(:all)     { 5 }

    it 'returns a Tweet storm suffix, incrementing the current number' do
      is_expected.to eq(' 1/5')
    end
  end
end
