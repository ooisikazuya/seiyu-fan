class FavoriteVoiceActor < ApplicationRecord
  validates :voice_actor_id,  uniqueness: { scope: [:user_id] }
  belongs_to :user
  belongs_to :voice_actor
end
