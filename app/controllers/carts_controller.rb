class CartsController < ApplicationController
	before_action :authenticate_user!

  def show
    current_cart
  end

  def checkout
	current_cart
    current_cart.checkout
    redirect_to cart_path(current_cart)
  end
end
