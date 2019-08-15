require 'rails_helper'

describe 'As a vistor' do
  describe 'when I visit the merchant index' do
    it 'I can create new merchants' do
      merchant = Merchant.create!(
        name: "Rick's Risky Tire Euporium",
        address: "123 Fake Lane",
        city: "Fakeville",
        state: "Colorado",
        zip: "80203"
        )

        visit '/merchants'

        click_link 'New Merchant'

        expect(current_path).to eq("/merchants/new")

        fill_in 'Name', with: "#{merchant.name}"
        fill_in 'Address', with: "#{merchant.address}"
        fill_in 'City', with: "#{merchant.city}"
        fill_in 'State', with: "#{merchant.state}"
        fill_in 'Postal Code', "#{merchant.zip}"
        click_on 'Create Merchant'

        expect(current_path).to eq("/merchants")
        expect(page).to have_content("#{merchant.name}")
        expect(page).to have_content("#{merchant.address}")
        expect(page).to have_content("#{merchant.city}")
        expect(page).to have_content("#{merchant.state}")
        expect(page).to have_content("#{merchant.zip}")
    end
  end
end
