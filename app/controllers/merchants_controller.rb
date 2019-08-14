class MerchantsController < ApplicationController

  def index
    @merchants = Merchant.all
  end

  def merchant_show
    @merchant = Merchant.find(params[:id])
  end

end
