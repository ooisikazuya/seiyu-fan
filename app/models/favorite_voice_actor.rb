class FavoriteVoiceActor < ApplicationRecord
  validates :voice_actor_id,  uniqueness: { scope: [:user_id] }
end
