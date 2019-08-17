class MerchantsController < ApplicationController

  def index
    @merchants = Merchant.all
  end

  def show
    @merchant = Merchant.find(params[:id])
  end

  def item_index
    @merchant = Merchant.find(params[:merchant_id])
  end

  def new
  end

  def edit
    @merchant_id = params[:id]
  end

  def create
    Merchant.create!(merchant_params)
    redirect_to '/merchants'
  end

  def delete
    merchant = Merchant.find(params[:id])
    merchant.items.destroy_all
    merchant.destroy
    redirect_to '/merchants'
  end

  def update
    Merchant.update(merchant_params)
    redirect_to "/merchants/#{params[:id]}"
  end

  private

  def merchant_params
    params.permit(:name, :address, :city, :state, :zip)
  end
end
