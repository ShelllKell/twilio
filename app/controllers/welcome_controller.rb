class WelcomeController < ApplicationController

  def index
    @texter = Texter.new

  end

  def create_text
    if params[:message]
      Texter.new.send_text(params[:message])
      redirect_to root_path
    end
  end


end
