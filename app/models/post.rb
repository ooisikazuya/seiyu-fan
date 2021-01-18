class Post < ApplicationRecord
  belongs_to :user
  belongs_to :voice_actor
  
  validates :message, presence: true
end
