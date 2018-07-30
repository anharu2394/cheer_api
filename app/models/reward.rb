class Reward < ApplicationRecord
  belongs_to :target
  belongs_to :user
end
