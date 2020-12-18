class VoiceActor < ApplicationRecord
  has_many :favorite_voice_actors
  has_many :users, through: :favorite_voice_actors
end
