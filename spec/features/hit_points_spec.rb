require 'spec_helper'

describe 'hit points' do
  it 'displays player2s hit points' do
    sign_in_and_play
    expect(page).to have_content("Carlos: 60HP")
  end

end
