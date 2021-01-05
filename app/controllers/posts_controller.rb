class PostsController < ApplicationController
  def index
    @voice_actor = VoiceActor.find(params[:favorite_voice_actor_id])
    @posts = @voice_actor.posts.all
  end

  def new
    @voice_actor = VoiceActor.find(params[:favorite_voice_actor_id])
    @post = Post.new
  end

  def create
    voice_actor = VoiceActor.find(params[:favorite_voice_actor_id])
    post = Post.new(post_params)
    post.voice_actor_id = voice_actor.id
    post.user_id = current_user.id
    post.save!
    redirect_to favorite_voice_actor_posts_path(voice_actor)
  end

  private
  def post_params
    params.require(:post).permit(:message)
  end
end

