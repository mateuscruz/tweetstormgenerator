# frozen_string_literal: true

class WordTooBig < StandardError
  def initialize(message, size)
    super("The word \"#{message}\" is bigger than the max word size of #{size}.")
  end
end
