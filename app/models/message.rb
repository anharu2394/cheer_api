class Message < ApplicationRecord
  belongs_to :target
  belongs_to :user
end
