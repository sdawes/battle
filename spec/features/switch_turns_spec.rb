require 'spec_helper'

context 'switching players' do

  scenario 'identifying the current player' do
    sign_in_and_play
    expect(page).to have_content "Steve's turn"
  end

  scenario 'after player1 attacks' do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content "Carlos's turn"
  end
end
