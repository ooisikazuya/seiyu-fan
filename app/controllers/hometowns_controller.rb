class HometownsController < ApplicationController
  def index
  end

  def show
    @prefecture = params[:prefecture]
    @voice_actors = if @prefecture == '北海道'
                      VoiceActor.where(prefecture: '北海道').page(params[:page]).per(10)
                    elsif @prefecture == '青森県'
                      VoiceActor.where(prefecture: '青森県').page(params[:page]).per(10)
                    elsif @prefecture == '岩手県'
                      VoiceActor.where(prefecture: '岩手県').page(params[:page]).per(10)
                    elsif @prefecture == '宮城県'
                      VoiceActor.where(prefecture: '宮城県').page(params[:page]).per(10)
                    elsif @prefecture == '秋田県'
                      VoiceActor.where(prefecture: '秋田県').page(params[:page]).per(10)
                    elsif @prefecture == '山形県'
                      VoiceActor.where(prefecture: '山形県').page(params[:page]).per(10)
                    elsif @prefecture == '福島県'
                      VoiceActor.where(prefecture: '福島県').page(params[:page]).per(10)
                    elsif @prefecture == '茨城県'
                      VoiceActor.where(prefecture: '茨城県').page(params[:page]).per(10)
                    elsif @prefecture == '栃木県'
                      VoiceActor.where(prefecture: '栃木県').page(params[:page]).per(10)
                    elsif @prefecture == '群馬県'
                      VoiceActor.where(prefecture: '群馬県').page(params[:page]).per(10)
                    elsif @prefecture == '埼玉県'
                      VoiceActor.where(prefecture: '埼玉県').page(params[:page]).per(10)
                    elsif @prefecture == '千葉県'
                      VoiceActor.where(prefecture: '千葉県').page(params[:page]).per(10)
                    elsif @prefecture == '東京都'
                      VoiceActor.where(prefecture: '東京都').page(params[:page]).per(10)
                    elsif @prefecture == '神奈川県'
                      VoiceActor.where(prefecture: '神奈川県').page(params[:page]).per(10)
                    elsif @prefecture == '新潟県'
                      VoiceActor.where(prefecture: '新潟県').page(params[:page]).per(10)  
                    elsif @prefecture == '富山県'
                      VoiceActor.where(prefecture: '富山県').page(params[:page]).per(10)
                    elsif @prefecture == '石川県'
                      VoiceActor.where(prefecture: '石川県').page(params[:page]).per(10)
                    elsif @prefecture == '福井県'
                      VoiceActor.where(prefecture: '福井県').page(params[:page]).per(10)
                    elsif @prefecture == '山梨県'
                      VoiceActor.where(prefecture: '山梨県').page(params[:page]).per(10)
                    elsif @prefecture == '長野県'
                      VoiceActor.where(prefecture: '長野県').page(params[:page]).per(10)
                    elsif @prefecture == '岐阜県'
                      VoiceActor.where(prefecture: '岐阜県').page(params[:page]).per(10)
                    elsif @prefecture == '静岡県'
                      VoiceActor.where(prefecture: '静岡県').page(params[:page]).per(10)
                    elsif @prefecture == '愛知県'
                      VoiceActor.where(prefecture: '愛知県').page(params[:page]).per(10)
                    elsif @prefecture == '三重県'
                      VoiceActor.where(prefecture: '三重県').page(params[:page]).per(10)
                    elsif @prefecture == '滋賀県'
                      VoiceActor.where(prefecture: '滋賀県').page(params[:page]).per(10)
                    elsif @prefecture == '京都府'
                      VoiceActor.where(prefecture: '京都府').page(params[:page]).per(10)
                    elsif @prefecture == '大阪府'
                      VoiceActor.where(prefecture: '大阪府').page(params[:page]).per(10)
                    elsif @prefecture == '兵庫県'
                      VoiceActor.where(prefecture: '兵庫県').page(params[:page]).per(10)
                    elsif @prefecture == '奈良県'
                      VoiceActor.where(prefecture: '奈良県').page(params[:page]).per(10)
                    elsif @prefecture == '和歌山県'
                      VoiceActor.where(prefecture: '和歌山県').page(params[:page]).per(10)
                    elsif @prefecture == '鳥取県'
                      VoiceActor.where(prefecture: '鳥取県').page(params[:page]).per(10)
                    elsif @prefecture == '島根県'
                      VoiceActor.where(prefecture: '島根県').page(params[:page]).per(10)
                    elsif @prefecture == '岡山県'
                      VoiceActor.where(prefecture: '岡山県').page(params[:page]).per(10)
                    elsif @prefecture == '広島県'
                      VoiceActor.where(prefecture: '広島県').page(params[:page]).per(10)
                    elsif @prefecture == '山口県'
                      VoiceActor.where(prefecture: '山口県').page(params[:page]).per(10)
                    elsif @prefecture == '徳島県'
                      VoiceActor.where(prefecture: '徳島県').page(params[:page]).per(10)
                    elsif @prefecture == '香川県'
                      VoiceActor.where(prefecture: '香川県').page(params[:page]).per(10)
                    elsif @prefecture == '愛媛県'
                      VoiceActor.where(prefecture: '愛媛県').page(params[:page]).per(10)
                    elsif @prefecture == '高知県'
                      VoiceActor.where(prefecture: '高知県').page(params[:page]).per(10)
                    elsif @prefecture == '福岡県'
                      VoiceActor.where(prefecture: '福岡県').page(params[:page]).per(10)
                    elsif @prefecture == '佐賀県'
                      VoiceActor.where(prefecture: '佐賀県').page(params[:page]).per(10)
                    elsif @prefecture == '長崎県'
                      VoiceActor.where(prefecture: '長崎県').page(params[:page]).per(10)
                    elsif @prefecture == '熊本県'
                      VoiceActor.where(prefecture: '熊本県').page(params[:page]).per(10)
                    elsif @prefecture == '大分県'
                      VoiceActor.where(prefecture: '大分県').page(params[:page]).per(10)
                    elsif @prefecture == '宮崎県'
                      VoiceActor.where(prefecture: '宮崎県').page(params[:page]).per(10)
                    elsif @prefecture == '鹿児島県'
                      VoiceActor.where(prefecture: '鹿児島県').page(params[:page]).per(10)
                    elsif @prefecture == '沖縄県'
                      VoiceActor.where(prefecture: '沖縄県').page(params[:page]).per(10)
                    elsif @prefecture == '沖縄県'
                      VoiceActor.where(prefecture: '沖縄県').page(params[:page]).per(10)
                    else @prefecture == '海外'   
                      VoiceActor.where.not('prefecture like ? or prefecture like ? or prefecture like ? or prefecture like ?', "%都", "%道", "%府", "%県").page(params[:page]).per(10)  
                    end    
  end
end
