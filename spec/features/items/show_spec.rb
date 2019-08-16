require 'rails_helper'

describe 'Items show page' do
  it "I can see that specific item's details" do
    ricks = Merchant.create(
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
      merchant_id: ricks.id
    )

    visit "/items/#{item.id}"

    expect(page).to have_content(item.name)
    expect(page).to have_content("Active = True")
    expect(page).to have_content("Price: $9,999.00")
    expect(page).to have_css("img[src*='#{item.image}']")
    expect(page).to have_content("Description: #{item.description}")
    expect(page).to have_content("Stock: #{item.inventory}")
    expect(page).to have_content("Merchant: #{ricks.name}")
  end
end
