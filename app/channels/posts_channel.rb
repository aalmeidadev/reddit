class PostsChannel < ApplicationCable::Channel
  def subscribed
      stream_from "User:#{current_user.id}"

      votes
  end

  def unsubscribed
    stop_all_streams
  end
end
