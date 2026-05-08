# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cadastrando moedas!..."

Coin.create!(
	description: "Bitcoin",
	acronym: "BTC",
	url_image: "https://png.pngtree.com/png-vector/20240827/ourmid/pngtree-gold-bitcoin-cryptocurrency-coin-3d-illustration-png-image_13630971.png"
)

Coin.create!(
	description: "Ethereum",
	acronym: "ETH",
	url_image: "https://upload.wikimedia.org/wikipedia/commons/b/b7/ETHEREUM-YOUTUBE-PROFILE-PIC.png"
)

Coin.create!(
	description: "DASH",
	acronym: "DASH",
	url_image: "https://cdn.freebiesupply.com/logos/large/2x/dash-3-logo-png-transparent.png"
)

puts "Moedas cadastradas!"
