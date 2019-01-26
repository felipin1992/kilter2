class Like < ApplicationRecord

  belongs_to :user
  has_many :dog, through: :match
end
