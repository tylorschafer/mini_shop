require 'rails_helper'

describe 'Welcome index' do
  it "displays homepage index" do

    expect(page).to have_content("Welcome to Tylor's Mini Shop!")
    expect(page).to have_link('Merchants')
    expect(page).to have_link('Items')
  end
end
