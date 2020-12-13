class VotesChannel < ApplicationCable::Channel
  def subscribed
    stream_for 'votes_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
