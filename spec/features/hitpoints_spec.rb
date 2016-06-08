
feature 'Hit Points' do
  scenario "show Player 2's hitpoint" do
    sign_in_and_play
    expect(page).to have_content "Mittens 60"
  end
end
