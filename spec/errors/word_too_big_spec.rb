# frozen_string_literal: true

require_relative '../../lib/errors/word_too_big'

describe WordTooBig do
  it 'is a sublcass of StandardError' do
    expect(described_class).to be < StandardError
  end

  describe '#message' do
    subject       { described_class.new(message, size).message }
    let(:message) { 'Sustainalytics' }
    let(:size)    { 4 }

    it 'returns a meaningul error message' do
      is_expected.to eq("The word \"Sustainalytics\" is bigger than the max word size of 4.")
    end
  end
end
