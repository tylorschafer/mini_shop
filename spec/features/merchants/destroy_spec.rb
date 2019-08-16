# As a visitor
# When I visit a merchant show page
# Then I see a link to delete the merchant
# When I click the link
# Then a 'DELETE' request is sent to '/merchants/:id',
# the merchant is deleted,
# and I am redirected to the merchant index page where I no longer see this merchant

require 'rails_helper'

describe 'When I click the delete merchant link' do
  it 'The merchant is deleted' do
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
