class Item < ApplicationRecord
  belongs_to :merchant

  validates_presence_of :name, :description, :price, :image, :inventory, :merchant_id
  validates_inclusion_of :active_status, :in => [true,false]
end
