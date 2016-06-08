

def sign_in_and_play
  visit('/')
  fill_in("player1", with: "Steve")
  fill_in("player2", with: "Carlos")
  click_button("submit")
end
