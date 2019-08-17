require 'rails_helper'

describe 'Item show page' do
  it 'When I click the Delete Item link, that Item is deleted' do
    merchant = Merchant.create!(
      name: "Rick's Risky Tire Euporium",
      address: "123 Fake Lane",
      city: "Fakeville",
      state: "Colorado",
      zip: "80203"
    )
    merchant.items.create!(
      name: 'Wolly Rug',
      description: 'This should look nice!',
      price: 98243,
      image: 'https://i.ebayimg.com/thumbs/images/g/uI4AAOSwv7BdKJfP/s-l225.jpg',
      active_status: true,
      inventory: 444,
    )

    visit "/merchants/#{merchant.id}"

    click_on 'Delete Merchant'

    expect(current_path).to eq('/merchants')
    expect(page).to_not have_content(merchant.name)
  end
end
