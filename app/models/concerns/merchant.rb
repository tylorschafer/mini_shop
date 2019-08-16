class Merchant < ApplicationRecord
  validate_presence_of :name, :address, :city, :state, :zip
end
