

class Dog < ApplicationRecord
  mount_uploader :photo, AvatarUploader

  def self.random(dog_id)
    User.where('id != ?', dog_id).order("random()").limit(1).first
  end

#belongs_to :user
has_many :like, through: :match

end
