class DeleteChannel < ApplicationCable::Channel
  def subscribed
    stream_from "delete_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def delete(data)
    logger.debug("ログ:id: #{data['id']}")
    ActionCable.server.broadcast 'delete_channel', id: data['id']
    Message.find(data['id']).destroy
  end
end
