require 'rails_helper'

describe 'Merchant item index' do
  it 'Shows all items that belong to that merchant' do
    ricks = Merchant.create(
      name: "Rick's Risky Tire Euporium",
      address: "123 Fake Lane",
      city: "Fakeville",
      state: "Colorado",
      zip: "80203"
    )
    item_1 = Item.create!(
      name: 'Super Tread 9000',
      description: 'A real nice tire',
      price: 9999,
      image: 'https://images.tirebuyer.com/visual-aids/products/tires/falken/wildpeakat3w/falken_wildpeakat3w_rbl_341933_sidewall_jpg_s3_resize_64x64_sidewall.jpg',
      active_status: true,
      inventory: 657,
      merchant_id: ricks.id
    )
    item_2 = Item.create!(
      name: 'Rubber Max 1000',
      description: 'Should get you there safely',
      price: 1000,
      image: 'https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwiOicTwg4bkAhXnCTQIHfTUCqUQjRx6BAgBEAQ&url=https%3A%2F%2Fwww.daytontrucktires.com%2Fen-us%2Findex&psig=AOvVaw1Cq_MM4SRupK4uGweZmf67&ust=1565984403681779',
      active_status: true,
      inventory: 10934,
      merchant_id: ricks.id
    )

    visit "/merchants/#{ricks.id}/items"

    expect(page).to have_content(item_1.name)
    expect(page).to have_content("$9,999.00")
    expect(page).to have_css("img[src*='#{item_1.image}']")
    expect(page).to have_content(item_1.active_status)
    expect(page).to have_content(item_1.inventory)

    expect(page).to have_content(item_2.name)
    expect(page).to have_content("$1,000.00")
    expect(page).to have_css("img[src*='#{item_2.image}']")
    expect(page).to have_content(item_2.active_status)
    expect(page).to have_content(item_2.inventory)

  end
end
