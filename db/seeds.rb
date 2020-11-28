# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  {
    id: 1,
    last_name: '水樹',
    first_name: '奈々',
    last_name_kana: 'みずき',
    first_name_kana: 'なな',
    prefecture: '愛媛県',
    address: '新居浜市',
    wikipedia_url: 'https://ja.wikipedia.org/wiki/%E6%B0%B4%E6%A8%B9%E5%A5%88%E3%80%85',
    twitter_url: 'https://twitter.com/NM_NANAPARTY'
  },
].each do |data|
  voice_actor = VoiceActor.find_or_initialize_by(id: data[:id])
  voice_actor.assign_attributes(
    last_name: data[:last_name],
    first_name: data[:first_name],
    last_name_kana: data[:last_name_kana],
    first_name_kana: data[:first_name_kana],
    prefecture: data[:prefecture],
    address: data[:address],
    wikipedia_url: data[:wikipedia_url],
    twitter_url: data[:twitter_url]
  )
  voice_actor.save!
end