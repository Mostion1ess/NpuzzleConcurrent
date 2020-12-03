
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


coins = [
          {
            description: 'Bitcoin',
            acronym: 'BTC',
            url_image: 'https://s2.coinmarketcap.com/static/img/coins/200x200/1.png',
            mining_type_id: '1'
          },
          {
            description: 'Ethereum',
            acronym: 'ETH',
            url_image: 'https://s2.coinmarketcap.com/static/img/coins/200x200/1027.png',
            mining_type_id: '1'
          },
          {
            description: 'Dash',
            acronym: 'DASH',
            url_image: 'https://s2.coinmarketcap.com/static/img/coins/200x200/131.png',
            mining_type_id: '1'
          },

          {
            description: 'Dogecoin',
            acronym: 'DOGE',
            url_image: 'https://s2.coinmarketcap.com/static/img/coins/200x200/74.png',
            mining_type_id: '1'
          },
]

coins.each do |coin|
  Coin.find_or_create_by!(coin)
end


mining_types = [
  {description: 'Proof of Work', acronym: 'PoW'},
  {description: 'Proof of Stake', acronym: 'PoS'},
  {description: 'Proof of Capacity', acronym: 'PoC'}
]

mining_types.each do |mining_type|
  MiningType.find_or_create_by!(mining_type)
end