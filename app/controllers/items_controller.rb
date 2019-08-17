class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @merchant_id = params[:merchant_id]
  end

  def edit
    @item_id = params[:id]
  end

  def update
    Item.find(params[:id]).update(item_params)
    redirect_to "/items/#{params[:id]}"
  end

  def create
    created_params = item_params
    created_params[:active_status] = true
    merchant = Merchant.find(params[:merchant_id])
    merchant.items.create!(created_params)
    redirect_to "/merchants/#{merchant.id}/items"
  end

  private

  def item_params
    params.permit(:name, :price, :description, :image, :inventory)
  end
end
