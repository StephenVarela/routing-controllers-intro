class PagesController < ApplicationController

  before_action :set_kitten_url, only:[:kitten, :kittens]

  def welcome
    @header="Welcome Page"
  end

  def about
    @header="About Page"
  end

  def contest
    @header="Contest Page"
  end

  def kitten
  end

  def kittens
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://placekitten.com/#{requested_size}/#{requested_size}"
  end

end
