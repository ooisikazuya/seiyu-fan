class FavoriteVoiceActorsController < ApplicationController
  def edit
    @voice_actors_array = VoiceActor.all.map { |actor| ["#{actor.last_name} #{actor.first_name}", actor.id] }
    @user = current_user
    favorite_voice_actor_ids = @user.favorite_voice_actors.pluck(:voice_actor_id)
    @favorite_voice_actors = VoiceActor.where(id: favorite_voice_actor_ids)
  end

  def update
    FavoriteVoiceActor.create(user: current_user, voice_actor_id: params['favorite_voice_actor_id_1'])
    FavoriteVoiceActor.create(user: current_user, voice_actor_id: params['favorite_voice_actor_id_2'])
    FavoriteVoiceActor.create(user: current_user, voice_actor_id: params['favorite_voice_actor_id_3'])
    redirect_to user_path(current_user)
  end
end