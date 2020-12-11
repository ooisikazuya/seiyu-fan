class HometownsController < ApplicationController
  def index
  end

  def show
    @prefecture = params[:prefecture]
    @voice_actors = if @prefecture == '海外'   
                      VoiceActor.where.not('prefecture like ? or prefecture like ? or prefecture like ? or prefecture like ?', "%都", "%道", "%府", "%県").page(params[:page]).per(10)
                    else
                      VoiceActor.where(prefecture: @prefecture).page(params[:page]).per(10)
                    end    
  end
end
