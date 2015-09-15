class Order < ActiveRecord::Base


  def item
    Item.find item_id
  end

  def user
    User.find user_id
  end

  def total_price
    quantity * (item.price / 100.0 )
  end
end
