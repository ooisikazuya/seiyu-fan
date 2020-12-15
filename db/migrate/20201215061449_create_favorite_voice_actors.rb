class CreateFavoriteVoiceActors < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_voice_actors do |t|
      t.integer :user_id
      t.integer :voice_actor_id

      t.timestamps
    end
    add_index  :favorite_voice_actors, [:voice_actor_id, :user_id], unique: true
  end
end
