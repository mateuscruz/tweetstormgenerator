# frozen_string_literal: true

require_relative '../../tweet_storm_generator'

describe TweetStorms::Generate do
  describe '#call' do
    subject { described_class.new(input).call }

    it 'returns a TweetStorm instance' do
      is_expected.to be_a(TweetStorm)
    end

    let(:input) { 'Sustainalytics is the coolest!' }

    context 'when input is smaller than Tweet::MAX_SIZE' do
      it 'returns a tweet storm with only one tweet' do
        expect(subject.size).to eq(1)
      end
    end

    context 'when input is bigger than Tweet::MAX_SIZE' do
      before do
        stub_const('Tweet::MAX_SIZE', 20)
      end

      it 'returns a tweet storm with multiple tweets' do
        expect(subject.size).to eq(2)
        expect(subject.to_thread_string).to eq <<~TEXT
          | Sustainalytics i 1/2
          |
          |
          | s the coolest! 2/2
        TEXT
      end
    end
  end
end
