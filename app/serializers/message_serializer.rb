class MessageSerializer < ActiveModel::Serializer
  attributes :body
  belongs_to :sender
  belongs_to :recipient
end
