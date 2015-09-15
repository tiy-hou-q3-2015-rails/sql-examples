class Item < ActiveRecord::Base

  def orders
    # select from the orders where criteria matches
    Order.where item_id: id
  end
end
