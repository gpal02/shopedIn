# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @products = Product.all
    @companies = Company.all
    @carts = Cart.all
    @orders = Order.all
  end
end
