class HomeController < ApplicationController
  def index
    @reviews = Review.all.order(created_at: 'desc')
  end
end
