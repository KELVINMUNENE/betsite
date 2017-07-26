class CreateGames < ActiveRecord::Migration[5.1]
  def change
  	create_table(:games) do |t|
  		t.column(:amount, :int)
  		t.column(:choice, :int)
  		t.column(:name, :string)
  		t.column(:player2, :string)
  		t.column(:player_image, :varchar)

  		t.timestamp()
  	end
  end
end
