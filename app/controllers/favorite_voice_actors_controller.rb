class FavoriteVoiceActorsController < ApplicationController
  def edit
    @voice_actors_array = VoiceActor.all.map { |actor| ["#{actor.last_name} #{actor.first_name}", actor.id] }
  end

  def update
    FavoriteVoiceActor.create(user: current_user, voice_actor_id: params['favorite_voice_actor_id_1'])
    FavoriteVoiceActor.create(user: current_user, voice_actor_id: params['favorite_voice_actor_id_2'])
    FavoriteVoiceActor.create(user: current_user, voice_actor_id: params['favorite_voice_actor_id_3'])
    redirect_to edit_favorite_voice_actors_path
  end
end
