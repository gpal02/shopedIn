class HomeController < ApplicationController
  def index
    @products = Product.all
    @companies = Company.all
    @carts = Cart.all
  end
end
