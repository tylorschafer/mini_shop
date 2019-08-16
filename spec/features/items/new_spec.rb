require 'rails_helper'
  describe 'Merchant items index' do
    it ' Has a link that will create a new item for that merchant' do
    merchant = Merchant.create(
      name: "Rick's Risky Tire Euporium",
      address: "123 Fake Lane",
      city: "Fakeville",
      state: "Colorado",
      zip: "80203"
    )
    name = 'Big ol Tire'
    price = 39
    description = 'Rugged, Rough, and Ready'
    image = 'https://i.b5z.net/i/u/1631707/i/ec/Interco-Reptile-tires.jpg'
    inventory = 241

    visit "/merchants/#{merchant.id}/items"

    click_on 'Add new item'

    expect(current_path).to eq("/merchants/#{merchant.id}/items/new")

    fill_in 'Name', with: name
    fill_in 'Price', with: price
    fill_in 'Description', with: description
    fill_in 'Image', with: image
    fill_in 'Inventory', with: inventory
    click_on 'Submit'

    expect(current_path).to eq("/merchants/#{merchant_id}/items")

    expect(page).to have_content(name)
    expect(page).to have_content("Price: $39.00")
    expect(page).to have_css("img[src*='#{image}']")
    expect(page).to have_content("Active = True")
    expect(page).to have_content("Stock: #{inventory}")
  end
end
