require 'spec_helper'

describe 'submitting names' do
  it 'fills in names, submits, display' do
    visit('/')
    fill_in("player1", with: "Steve")
    fill_in("player2", with: "Carlos")
    click_button("submit")
    expect(page).to have_content("Steve vs. Carlos")
  end




end
