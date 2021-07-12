class FavoriteVoiceActorsController < ApplicationController
  before_action :set_user, only: [:index, :edit]

  def index
    favorite_voice_actor_ids = @user.favorite_voice_actors.pluck(:voice_actor_id)
    @favorite_voice_actors = VoiceActor.where(id: favorite_voice_actor_ids)
  end
  
  def edit
    @voice_actors_array = VoiceActor.all.map { |actor| ["#{actor.last_name} #{actor.first_name}", actor.id] }  # 選択肢に使用する声優のデータ
    favorite_voice_actor_ids = @user.favorite_voice_actors.pluck(:voice_actor_id)
    @favorite_voice_actors = VoiceActor.where(id: favorite_voice_actor_ids)
  end

  def update
    current_user.favorite_voice_actors.destroy_all
    FavoriteVoiceActor.create(user: current_user, voice_actor_id: params['favorite_voice_actor_id_1'])
    FavoriteVoiceActor.create(user: current_user, voice_actor_id: params['favorite_voice_actor_id_2'])
    FavoriteVoiceActor.create(user: current_user, voice_actor_id: params['favorite_voice_actor_id_3'])
    redirect_to user_path(current_user)
  end

  private

  def set_user
    @user = current_user
  end
end