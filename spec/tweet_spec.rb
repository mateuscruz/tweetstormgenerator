# frozen_string_literal: true

require 'spec_helper'

require_relative '../lib/errors'
require_relative '../lib/tweet'

RSpec.describe Tweet do
  describe '.MAX_SIZE' do
    subject { described_class::MAX_SIZE }

    it { is_expected.to eq(140) }
  end

  describe '.new' do
    subject { described_class.new(text) }

    context 'when given text is smaller than MAX_SIZE' do
      let(:text) { 'a' * (described_class::MAX_SIZE - 1) }

      it 'returns a Tweet instance' do
        is_expected.to be_a(Tweet)
      end
    end

    context 'when given text size equals MAX_SIZE' do
      let(:text) { 'a' * (described_class::MAX_SIZE) }

      it 'returns a Tweet instance' do
        is_expected.to be_a(Tweet)
      end
    end

    context 'when given text size is bigger than MAX_SIZE' do
      let(:text) { 'a' * (described_class::MAX_SIZE + 1) }

      it 'raise a TweetTooBig error' do
        expect { subject }.to raise_error(TweetTooBig)
      end
    end
  end

  describe '#text' do
    subject { described_class.new('Sustainalytics is the coolest!').text }

    it 'returns stored text' do
      is_expected.to eq('Sustainalytics is the coolest!')
    end
  end

  describe '#size' do
    subject { described_class.new('Sustainalytics is the coolest!').size }

    it 'returns the stored text size' do
      is_expected.to eq(30)
    end
  end
end
