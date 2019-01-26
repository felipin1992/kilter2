class Match < ApplicationRecord
  has_and_belongs_to_many :dog
  has_and_belongs_to_many :like
end
