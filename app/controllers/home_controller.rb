class HomeController < ApplicationController
  def index
    @books = Book.delivered
  end
end