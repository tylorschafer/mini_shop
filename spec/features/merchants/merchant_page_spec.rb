require 'rails_helper'

RSpec.describe 'merchants index page', type: :feature do
  it 'user can see all songs' do
    merchant_1 = Merchant.create(
      name: "Rick's Risky Tire Euporium",
      address: "123 Fake Lane",
      city: "Fakeville",
      state: "Colorado",
      zip: "80203"
    )
    merchant_2 = Merchant.create(
      name: "Wild Wild Western Fabrics",
      address: "456 Not Real Ct",
      city: "False Town",
      state: "Michigan",
      zip: "20356"
    )

    visit "/merchants/1"

    expect(page).to have_content(merchant_1.name)
    expect(page).to have_content(merchant_1.address)
    expect(page).to have_content(merchant_1.city)
    expect(page).to have_content(merchant_1.state)
    expect(page).to have_content(merchant_1.zip)

    visit "/merchants/2"

    expect(page).to have_content(merchant_2.name)
    expect(page).to have_content(merchant_2.address)
    expect(page).to have_content(merchant_2.city)
    expect(page).to have_content(merchant_2.state)
    expect(page).to have_content(merchant_2.zip)
  end
end
