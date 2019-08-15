class MerchantsController < ApplicationController

  def index
    @merchants = Merchant.all
  end

  def show
    @merchant = Merchant.find(params[:id])
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
    Merchant.destroy(params[:id])
    redirect_to '/merchants'
  end

  def update
    merchant = Merchant.update(merchant_params)
    redirect_to "/merchants/#{params[:id]}"
  end

  private

  def merchant_params
    params.permit(:name, :address, :city, :state, :zip)
  end
end
