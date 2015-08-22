class Micropost < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  
  has_many :favorites
  def favorite_for(user)
    favorites.find_by(user_id: user)
  end
end
