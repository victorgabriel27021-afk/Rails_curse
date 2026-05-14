namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task add_coins: :environment do
    show_spinner("Cadastrando moedas...")do
    coins = [
      {
        description: "Bitcoin",
        acronym: "BTC"
        url_image: "https://cdn3d.iconscout.com/3d/free/thumb/free-bitcoin-3d-icon-png-download-4323417.png",
        Mining_type: MiningType.all.sample
      },
      {
        description: "Ethereum",
        acronym: "ETC",
        url_image: "https://upload.wikimedia.org/wikipedia/commons/b/b7/ETHEREUM-YOUTUBE-PROFILE-PIC.png",
        Mining_type: MiningType.all.sample
      }
      {
        description: "Dash",
        acronym: "DASH",
        url_image: "https://cryptologos.cc/logos/dash-dash-logo.png",
        Mining_type: MiningType.all.sample
      }
    ]    
  end
  task setup: :environment do
    puts %x(rails db:drop db:create db:migrate db:seed)
  end
end