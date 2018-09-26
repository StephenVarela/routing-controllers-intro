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

end
