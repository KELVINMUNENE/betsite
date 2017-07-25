class AddPlayer2AndPlayerImageColumns < ActiveRecord::Migration[5.1]
  def change
  	add_column(:games, :player2, :string)
  	add_column(:games, :player_image, :varchar)
  end
end
