class Admin::ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(params)
    @item.save
    redirect_to admin_items_path
  end

  def params
    params.require(:item).permit(:image, :name, :introduction, :genre_id, :price, :is_active)
  end
end
