class StoreController < ApplicationController
  skip_before_action :authorize
  include Application
  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.order(:title)

    current_count = incrememt_counter

    @session_count = current_count if current_count > 5
  end

end
