class PagesController < ApplicationController

  def welcome
    @header="Welcome Page"
  end

  def about
    @header="About Page"
  end

  def contest
    @header="Contest Page"
  end

  def kittens
    requested_size = params[:size]
    @kitten_url = "http://placekitten.com/#{requested_size}/#{requested_size}"
  end

end
