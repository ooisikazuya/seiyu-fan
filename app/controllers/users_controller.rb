class UsersController < ApplicationController
  def index
  end

  def show
    @user = current_user
    favorite_voice_actor_ids = @user.favorite_voice_actors.pluck(:voice_actor_id)
    @favorite_voice_actors = VoiceActor.where(id: favorite_voice_actor_ids)
  end

  def create
  end

  def update
  end
end