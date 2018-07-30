class Target < ApplicationRecord
  has_many :rewards
  belongs_to :user
  belongs_to :message
end
