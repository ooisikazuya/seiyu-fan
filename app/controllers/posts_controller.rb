class PostsController < ApplicationController
  before_action :set_voice_actor

  def index
    @posts = @voice_actor.posts.all.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.voice_actor_id = @voice_actor.id
    @post.user_id = current_user.id
    @post.save!
    redirect_to favorite_voice_actor_posts_path(@voice_actor)
  rescue
    render :new
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end

  def set_voice_actor
    @voice_actor = VoiceActor.find(params[:favorite_voice_actor_id])
  end
end

