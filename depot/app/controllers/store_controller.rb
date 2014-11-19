class StoreController < ApplicationController
  include Application

  def index
    @products = Product.order(:title)

    current_count = incrememt_counter

    @session_count = current_count if current_count > 5
  end

end
