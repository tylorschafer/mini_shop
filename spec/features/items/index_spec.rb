# As a visitor
# When I visit '/items'
# Then I see each Item in the system including the Item's:
# - name
# - description
# - price
# - image
# - active/inactive status
# - inventory
# - the name of the merchant that sells the item

require 'rails_helper'

describe 'When I visit the items index' do
  it 'I see each item and their characteristics' do
    merchant = Merchant.create!(
      name: "Rick's Risky Tire Euporium",
      address: "123 Fake Lane",
      city: "Fakeville",
      state: "Colorado",
      zip: "80203"
    )
    merchant.items.create!(
      name: 'Super Tread 9000',
      description: 'A Real Nice Tire',
      price: 9999,
      image: 'https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwjxl4ff0IXkAhVE_J4KHR8uD3MQjRx6BAgBEAQ&url=https%3A%2F%2Fwww.toyotires.com%2Ftire%2Fpattern%2Fmud-tires-open-country-mt&psig=AOvVaw1Cq_MM4SRupK4uGweZmf67&ust=1565984403681779',
      active_status: true,
      inventory: 657,
    )

    visit '/items'

    expect(page).to have_content(item_1.name)
    expect(page).to have_content(item_1.description)
    expect(page).to have_content(item_1.price)
    expect(page).to have_css("img[src*='#{item_1.image}']")
    expect(page).to have_content(item_1.status)
    expect(page).to have_content(item_1.inventory)
    expect(page).to have_content(item_1.merchant.name)
  end
end
