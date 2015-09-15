class OrdersController < ApplicationController
  def list
    @orders = Order.all
  end

end
