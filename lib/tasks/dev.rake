namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment
    if Rails.env.development?
      spinner = TTY::Spinner.new("[:spinner] EXC...")
      spinner.auto_spin
    puts %x(rails db:drop) 
      spinner.success("(successful)")

      spinner = TTY::Spinner.new("[:spinner] EXC...")
      spinner.auto_spin
    puts %x(rails db:create) 
    spinner.success("(successful)")

     spinner = TTY::Spinner.new("[:spinner] EXC...")
      spinner.auto_spin
    puts %x(rails db:migrate)
    spinner.success("(successful)")
    
     spinner = TTY::Spinner.new("[:spinner] EXC...")
      spinner.auto_spin
    puts %x(rails db:seed)
      spinner.success("(successful)")
    else
     puts "Voce nao esta em ambiente de desenvolvimento"
    end
end
