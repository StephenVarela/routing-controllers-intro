class PagesController < ApplicationController

  before_action :set_kitten_url, only:[:kitten, :kittens]

  def welcome
    @header="Welcome Page"
  end

  def about
    @header="About Page"
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to '/welcome'
  end

  def kitten
  end

  def kittens
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://placekitten.com/#{requested_size}/#{requested_size}"
  end

  def secrets
    if params[:magic_word] == "password"
      render :secrets
    else
      flash[:alert] = "You are not authorized!"
      redirect_to '/welcome'
    end
  end

end
