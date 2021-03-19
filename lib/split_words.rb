# frozen_string_literal: true

class SplitWords
  def initialize(words:, limit:)
    @words     = words
    @limit     = limit
    @sequences = [ Array.new ]
  end

  def call
    raise WordTooBig.new(too_big_word, limit) if too_big_word?

    find_sequences

    sequences.map { |sequence| sequence.join(' ') }
  end

  private

  attr_reader :words, :limit, :sequences

  def find_sequences
    index = 0
    words.each do |word|
      current_sequence = sequences[index]
      if (current_sequence + [word]).join(' ').size > limit
        index += 1
        sequences[index] = []
        redo
      else
        current_sequence << word
      end
    end
  end

  def too_big_word?
    !!too_big_word
  end

  def too_big_word
    words.find { |word| word.size > limit }
  end
end
