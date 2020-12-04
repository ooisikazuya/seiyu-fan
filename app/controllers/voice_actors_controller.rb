class VoiceActorsController < ApplicationController
  def index
    kana_row = params[:kana_row] || 'あ'
    @voice_actors = if kana_row == 'あ'
                       VoiceActor.where('last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ?', "あ%", "い%", "う%", "え%", "お%")
                     elsif kana_row == 'か'
                       VoiceActor.where('last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ? or last_name_kana like ?', "か%", "き%", "く%", "け%", "こ%")
                     end
  end
end
