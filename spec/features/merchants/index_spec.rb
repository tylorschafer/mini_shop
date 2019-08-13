require 'rails_helper'

RSpec.describe 'merchants index page', type: :feature do
  it 'user can see all songs' do
    merchant_1 = Merchant.create(name: "Rick's Risky Tire Euporium")
    merchant_2 = Merchant.create(name: "Wild Wild Western Fabrics")

    visit "/merchants"

    expect(page).to have_content(merchant_1.name)
    expect(page).to have_content(merchant_2.name)
  end
end
