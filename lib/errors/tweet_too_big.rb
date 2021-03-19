# frozen_string_literal: true

class TweetTooBig < StandardError
  def initialize(message)
    size = message.size

    super("Tweet \"#{message}\" has #{size} characters. Max allowed is #{Tweet::MAX_SIZE}.")
  end
end
