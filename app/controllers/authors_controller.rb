class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
    require "pry"; binding.pry
  end
end
