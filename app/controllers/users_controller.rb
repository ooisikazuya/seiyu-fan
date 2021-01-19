class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @voice_actor = VoiceActor.find(params[:voice_actor_id])
    @users = User.where(id: @voice_actor.favorite_voice_actors.pluck(:user_id))
  end

  def show
    @user = current_user
    favorite_voice_actor_ids = @user.favorite_voice_actors.pluck(:voice_actor_id)
    @favorite_voice_actors = VoiceActor.where(id: favorite_voice_actor_ids)
  end
end