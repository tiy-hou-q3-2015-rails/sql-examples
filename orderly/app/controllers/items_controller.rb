class ItemsController < ApplicationController

  def list
    @items = Item.all.order("title asc")
  end

  def detail
    @item = Item.find params[:id]
  end
end
