class VoiceActorsController < ApplicationController
  def index
    @kana_row = params[:kana_row] || 'あ'
    @voice_actors = if @kana_row == 'あ'
                      VoiceActor.where('last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ?', "あ%", "い%", "う%", "え%", "お%")
                    elsif @kana_row == 'か'
                      VoiceActor.where('last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ?', "か%", "き%", "く%", "け%", "こ%")
                    elsif @kana_row == 'さ'
                      VoiceActor.where('last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ?', "さ%", "し%", "す%", "せ%", "そ%")
                    elsif @kana_row == 'た'
                      VoiceActor.where('last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ?', "た%", "ち%", "つ%", "て%", "と%")
                    elsif @kana_row == 'な'
                      VoiceActor.where('last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ?', "な%", "に%", "ぬ%", "ね%", "の%")
                    elsif @kana_row == 'は'
                      VoiceActor.where('last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ?', "は%", "ひ%", "ふ%", "へ%", "ほ%")
                    elsif @kana_row == 'ま'
                      VoiceActor.where('last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ?', "ま%", "み%", "む%", "め%", "も%")
                    elsif @kana_row == 'や'
                      VoiceActor.where('last_name_kana like ? or last_name_kana like ? or last_name_kana like ?', "や%", "ゆ%", "よ%")
                    elsif @kana_row == 'ら'
                      VoiceActor.where('last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ?', "ら%", "り%", "る%", "れ%", "ろ%")
                    else 
                      VoiceActor.where('last_name_kana like ? or last_name_kana like ? or last_name_kana like ?', "わ%", "を%", "ん%",)  
                    end
  end
end
