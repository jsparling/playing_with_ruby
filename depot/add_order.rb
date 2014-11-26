ENV['RAILS_ENV'] ||= 'development'
require File.expand_path('../config/environment', __FILE__)
require 'order'

an_order = Order.new
an_order.name = "jake"
an_order.address = "jake"
an_order.email = "jake@jake.com"
an_order.pay_type = "Check"

an_order.save!
puts an_order.name

puts an_order.id

puts Order.all.count
