class CreateVoiceActors < ActiveRecord::Migration[5.2]
  def change
    create_table :voice_actors do |t|
      t.string :last_name, null: false  
      t.string :first_name, null: false, default: ""  
      t.string :last_name_kana, null: false  
      t.string :first_name_kana, null: false, default: ""  
      t.string :prefecture, null: false
      t.string :address, null: false, default: ""
      t.string :wikipedia_url, null: false, default: ""
      t.string :twitter_url, null: false, default: ""

      t.timestamps

      t.index :last_name_kana
      t.index :prefecture
    end
  end
end
