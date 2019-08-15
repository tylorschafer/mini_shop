require 'rails_helper'

describe 'when I visit a merchants show page', type: :feature do
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

  it 'I can see all of that merchants info' do
    visit "/merchants/#{@merchant_1.id}"

    expect(page).to have_content(@merchant_1.name)
    expect(page).to have_content(@merchant_1.address)
    expect(page).to have_content(@merchant_1.city)
    expect(page).to have_content(@merchant_1.state)
    expect(page).to have_content(@merchant_1.zip)
    expect(page).to_not have_content(@merchant_2.name)

    visit "/merchants/#{@merchant_2.id}"

    expect(page).to have_content(@merchant_2.name)
    expect(page).to have_content(@merchant_2.address)
    expect(page).to have_content(@merchant_2.city)
    expect(page).to have_content(@merchant_2.state)
    expect(page).to have_content(@merchant_2.zip)
    expect(page).to_not have_content(@merchant_1.name)
  end

  it 'I can see a link to update the merchants info' do
    visit "/merchants/#{@merchant_1.id}"

    expect(page).to have_link('Update Merchant')
  end

  it "I can see a link to delete the merchant" do
    visit "/merchants/#{@merchant_1.id}"

    expect(page).to have_link('Delete Merchant')
  end
end
