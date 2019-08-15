require 'rails_helper'

describe 'When I visit the merchant index' do
  before :each do
    @merchant = Merchant.create!(
      name: "Rick's Risky Tire Euporium",
      address: "123 Fake Lane",
      city: "Fakeville",
      state: "Colorado",
      zip: "80203"
      )
  end
  it 'I can create a new merchant' do

      visit '/merchants'

      click_link 'New Merchant'

      expect(current_path).to eq("/merchants/new")

      fill_in 'name', with: @merchant.name
      fill_in 'address', with: @merchant.address
      fill_in 'city', with: @merchant.city
      fill_in 'state', with: @merchant.state
      fill_in 'zip', with: @merchant.zip
      click_on 'Create Merchant'

      expect(current_path).to eq("/merchants")
      expect(page).to have_content(@merchant.name)
    end

    describe 'When I visit that new merchant show page' do
      it 'the info of that merchant will be present' do

        visit "/merchants/#{@merchant.id}"

        expect(page).to have_content(@merchant.name)
        expect(page).to have_content(@merchant.address)
        expect(page).to have_content(@merchant.city)
        expect(page).to have_content(@merchant.state)
        expect(page).to have_content(@merchant.zip)
    end
  end
end
