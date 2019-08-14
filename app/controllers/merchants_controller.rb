class MerchantsController < ApplicationController

  def index
    @merchants = Merchant.all
  end

  def merchant_info
    @merchant = Merchant.find(params[:id])
  end

end
