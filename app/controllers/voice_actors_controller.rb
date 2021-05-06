class VoiceActorsController < ApplicationController
  def index
    @kana_row = params[:kana_row] || 'あ'
    @voice_actors = if @kana_row == 'あ'
                      VoiceActor.where('last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ?', "あ%", "い%", "う%", "え%", "お%").page(params[:page]).per(10)
                    elsif @kana_row == 'か'
                      VoiceActor.where('last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ?', "か%", "き%", "ぎ%", "く%", "け%", "げ%", "こ%").page(params[:page]).per(10)                      
                    elsif @kana_row == 'さ'
                      VoiceActor.where('last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ?', "さ%", "し%", "す%", "せ%", "そ%").page(params[:page]).per(10)                     
                    elsif @kana_row == 'た'
                      VoiceActor.where('last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ?', "た%", "ち%", "つ%", "て%", "と%").page(params[:page]).per(10)                      
                    elsif @kana_row == 'な'
                      VoiceActor.where('last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ?', "な%", "に%", "ぬ%", "ね%", "の%").page(params[:page]).per(10)                     
                    elsif @kana_row == 'は'
                      VoiceActor.where('last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ?', "は%", "ぱ%", "ひ%", "ふ%", "へ%", "ほ%").page(params[:page]).per(10)                      
                    elsif @kana_row == 'ま'
                      VoiceActor.where('last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ?', "ま%", "み%", "む%", "め%", "も%").page(params[:page]).per(10)                      
                    elsif @kana_row == 'や'
                      VoiceActor.where('last_name_kana like ? or last_name_kana like ? or last_name_kana like ?', "や%", "ゆ%", "よ%").page(params[:page]).per(10)                      
                    elsif @kana_row == 'ら'
                      VoiceActor.where('last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ?', "ら%", "り%", "る%", "れ%", "ろ%").page(params[:page]).per(10)                      
                    else 
                      VoiceActor.where('last_name_kana like ? or last_name_kana like ? or last_name_kana like ?', "わ%", "を%", "ん%",).page(params[:page]).per(10)                     
                    end                                                  
  end 
end
