class WelcomeController < ApplicationController
  def index
    @nome = "VtFour"
    @meu_nome = params[:nome]
  end
end
