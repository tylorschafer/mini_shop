require 'rails_helper'

describe 'After I click the update merchant link' do
  describe 'I am taken to an edit page' do
    it 'where I can edit a merchants info' do
      merchant = Merchant.create!(
        name: "Wild Wild Western Fabrics",
        address: "456 Not Real Ct",
        city: "False Town",
        state: "Michigan",
        zip: 20356
      )

      name = "Dangerous Daves Diving Boards"
      address = "666 Evil Court"
      city = "Inferno"
      state = "Utah"
      zip = 66666

      visit "/merchants/#{merchant.id}"

      click_on 'Update Merchant'

      expect(current_path).to eq("/merchants/#{merchant.id}/edit")

      fill_in 'name', with: name
      fill_in 'address', with: address
      fill_in 'city', with: city
      fill_in 'state', with: state
      fill_in 'zip', with: zip
      click_on 'Update Merchant'

      expect(current_path).to eq("/merchants/#{merchant.id}")

      expect(page).to have_content(name)
      expect(page).to have_content(address)
      expect(page).to have_content(city)
      expect(page).to have_content(state)
      expect(page).to have_content(zip)

      expect(page).to_not have_content(merchant.name)
      expect(page).to_not have_content(merchant.address)
      expect(page).to_not have_content(merchant.city)
      expect(page).to_not have_content(merchant.state)
      expect(page).to_not have_content(merchant.zip)
    end
  end
end
