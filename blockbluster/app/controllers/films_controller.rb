class FilmsController < ApplicationController
  def list
    @films = Film.all
  end

  def detail
    @film = Film.find params[:id]
  end
end
