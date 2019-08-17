require 'rails_helper'

describe 'Merchant index' do
  before :each do
    @merchant_1 = Merchant.create!(
      name: "Rick's Risky Tire Euporium",
      address: "123 Fake Lane",
      city: "Fakeville",
      state: "Colorado",
      zip: "80203"
    )
    @merchant_2 = Merchant.create!(
      name: "Wild Wild Western Fabrics",
      address: "456 Not Real Ct",
      city: "False Town",
      state: "Michigan",
      zip: "20356"
    )
  end

  it 'I can see all merchants names' do
    visit "/merchants"

    expect(page).to have_content(@merchant_1.name)
    expect(page).to have_content(@merchant_2.name)
  end
end
