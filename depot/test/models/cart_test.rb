require 'test_helper'

class CartTest < ActiveSupport::TestCase
  test "add 2 unique books" do
    cart = Cart.new
    cart.add_product(products(:ruby).id).save
    cart.add_product(products(:one).id).save

    assert_equal 2, cart.line_items.size
    assert_equal products(:ruby).price, cart.line_items.first.price
    assert_equal products(:one).price, cart.line_items.second.price
  end

  test "add 2 of the same book" do
    cart = Cart.new

    cart.add_product(products(:ruby).id).save
    cart.add_product(products(:ruby).id).save

    assert_equal 1, cart.line_items.length
    assert_equal 2, cart.line_items.first.quantity
    assert_equal products(:ruby).price, cart.line_items.first.price
  end
end
