class Message < ApplicationRecord
  after_create_commit { MessageBroadcastJob.perform_later self }
  after_destroy_commit { MessageBroadcastJob.perform_later self }
end
