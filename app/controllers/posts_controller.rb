class PostsController < ApplicationController
  def index
    @voice_actor = VoiceActor.find(params[:favorite_voice_actor_id])
  end

  def new
  end

  def create
  end
end

