# As a visitor
# When I visit a Merchant Items Index page
# Then I see a link to add a new item for that merchant
# When I click the link
# I am taken to '/merchants/:merchant_id/items/new' where I see a form to add a new item
# When I fill in the form with the item's:
# - name
# - price
# - description
# - image
# - inventory
# Then a `POST` request is sent to '/merchants/:merchant_id/items',
# a new item is created for that merchant,
# that item has a status of 'active',
# and I am redirected to the Merchant Items Index page where I see the new item

require 'rails_helper'
  describe 'Merchant items index' do
    it ' Add item link will create a new item for that merchant' do
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
