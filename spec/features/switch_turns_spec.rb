describe 'Switch turns' do
  context ' seeing the current turn' do
    scenario ' at the start of the game' do
      sign_in_and_play
      expect(page).to have_content("Dave's turn")
    end
  end
end
