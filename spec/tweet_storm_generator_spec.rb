# frozen_string_literal: true

describe 'tweetstormgenerator' do
  subject { `./tweetstormgenerator #{input}` }

  let(:tweet_storm) { double(TweetStorm.to_s) }

  context 'when no input is given' do
    let(:input) { nil }

    it 'fails' do
      is_expected.to eq("Usage: tweetstormgenerator <text>\n")
    end
  end

  context 'when input has a word that is bigger than max size' do
    let(:input) { 'a' * (Tweet::MAX_SIZE + 1) }

    it 'fails' do
      is_expected.to eq("Error: The word \"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\" is bigger than the max word size of 140.\n")
    end
  end

  context 'when input is given' do
    let(:input) { 'Sustainalytics_is_the_coolest!' }

    it 'works' do
      is_expected.to eq("| Sustainalytics_is_the_coolest!\n")
    end
  end
end
