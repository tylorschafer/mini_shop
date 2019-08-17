require 'rails_helper'

describe 'Items show page' do
  it "I can edit that items details" do
    merchant = Merchant.create(
      name: "Rick's Risky Tire Euporium",
      address: "123 Fake Lane",
      city: "Fakeville",
      state: "Colorado",
      zip: "80203"
    )
    item = Item.create(
      name: 'Super Tread 9000',
      description: 'A real nice tire',
      price: 9999,
      image:'https://images.tirebuyer.com/visual-aids/products/tires/falken/wildpeakat3w/falken_wildpeakat3w_rbl_341933_sidewall_jpg_s3_resize_64x64_sidewall.jpg',
      active_status: true,
      inventory: 657,
      merchant_id: merchant.id
    )
    name = 'New Name'
    price = 899
    description = 'Lets change the description'
    image = 'https://i5.walmartimages.com/dfw/4ff9c6c9-12a4/k2-_50eea408-cb63-4d3d-b853-fc3d7ce2a255.v1.jpg?odnWidth=444&odnHeight=622&odnBg=ffffff'
    inventory = 999

    visit "/items/#{item.id}"

    click_on 'Update Item'

    expect(current_path).to eq("/items/#{item.id}/edit")

    fill_in 'name', with: name
    fill_in 'price', with: price
    fill_in 'description', with: description
    fill_in 'image', with: image
    fill_in 'inventory', with: inventory
    click_on 'Submit'

    expect(current_path).to eq("/items/#{item.id}")

    expect(page).to have_content(name)
    expect(page).to have_content('Price: $899.00')
    expect(page).to have_content("Description: #{description}")
    expect(page).to have_css("img[src*='#{image}']")
    expect(page).to have_content("Inventory: #{inventory}")
  end
end
