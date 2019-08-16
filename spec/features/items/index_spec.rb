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
    item_1 = Item.create!(
      name: 'Super Tread 9000',
      description: 'A real nice tire',
      price: 9999,
      image: 'https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwjxl4ff0IXkAhVE_J4KHR8uD3MQjRx6BAgBEAQ&url=https%3A%2F%2Fwww.toyotires.com%2Ftire%2Fpattern%2Fmud-tires-open-country-mt&psig=AOvVaw1Cq_MM4SRupK4uGweZmf67&ust=1565984403681779',
      active_status: true,
      inventory: 657,
      merchant_id: merchant.id
    )
    item_2 = Item.create!(
      name: 'Rubber Max 1000',
      description: 'Should get you there safely',
      price: 1000,
      image: 'https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwiOicTwg4bkAhXnCTQIHfTUCqUQjRx6BAgBEAQ&url=https%3A%2F%2Fwww.daytontrucktires.com%2Fen-us%2Findex&psig=AOvVaw1Cq_MM4SRupK4uGweZmf67&ust=1565984403681779',
      active_status: true,
      inventory: 10934,
      merchant_id: merchant.id
    )

    visit '/items'

    expect(page).to have_content(item_1.name)
    expect(page).to have_content(item_1.description)
    expect(page).to have_content(item_1.price)
    expect(page).to have_css("img[src*='#{item_1.image}']")
    expect(page).to have_content(item_1.status)
    expect(page).to have_content(item_1.inventory)
    expect(page).to have_content(item_1.merchant.name)

    expect(page).to have_content(item_2.name)
    expect(page).to have_content(item_2.description)
    expect(page).to have_content(item_2.price)
    expect(page).to have_css("img[src*='#{item_2.image}']")
    expect(page).to have_content(item_2.status)
    expect(page).to have_content(item_2.inventory)
    expect(page).to have_content(item_2.merchant.name)
  end
end
